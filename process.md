## Instagram Clone with Devise
​
### Setting up Devise
​
* Create your Rails app, cd into the folder and open in Sublime.
​
```ruby
rails new instagram_clone -d postgresql
cd instagram_clone
subl .
```
​
* Add Devise to the Gemfile. It doesn't matter where you put it in the Gemfile.
​
```ruby
gem 'devise'
```
​
* Save the Gemfile and run `bundle` to install the Devise.
​
* Now run the generator with `rails g devise:install`. This will install an initializer which describes all of Devise's configuration options.
​
* Add the following line inside `config/environment/development.rb`, inside of the do/end. 
​
```ruby
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```
​
* Devise requires us to have flash messages. To set these up, add the following above `<%= yield %>` inside your `layout/application.html.erb`.
​
```ruby
<% flash.each do |name, message| %>
  <div class="flash-message flash-message-<%= name %>">
    <%= message %>
  </div>
<% end %>
```
​
* To create our User model that we want to register and log in with, use the command `rails generate devise User`. This will create us our User model, and a migration to create a users table.
​
* To run our new migration, we need to create our database and run the migration with the command `rake db:create db:migrate`.
​
* Inside our `config/routes.rb` we now have `devise_for :users`. This has given us lots of new routes and we can check these by using the command `rake routes` in the terminal. These routes include logging in and logging out, and registration. 
​
* In order to customise the views that Devise creates for register, log in etc. you can copy them into your views folder with the command `rails g devise:views`. When you customise these views they will overwrite the version stored inside the Devise gem folder in your machine. You can now find these inside `views/devise`.

## Setting up Bookable

*Add bookable to gem file
```
gem 'bookable', '~> 0.0.52'
```
Change the jbuilder 1.2 instead of 2.0 to stop confilct

*Bundle changes
```
bundle
```

Run the bookable generater

```
rails generate bookable:install bike
```
Create the bookable migrations

```
rake db:migrate
```

## Setting up navs etc.

*Set up the root in the controllers folder
```
root "bikes#index"
```

*Add some navigation into application layout

*Devise has a `current_user` method that we can use to do some logic inside our views. Add an if/else statement inside your header to determine when to show login and register, and when to show logout.
​
```ruby
<header>
  <nav>
    <ul>
      <li><%= link_to "Home", root_path %></li>
      <li><%= link_to "See bikes and add new bookign", bikes_path %></li>
      <% if current_user %>
      <li><%= link_to "Logout", destroy_user_session_path, method: :delete %></li>
      <% else %>
      <li><%= link_to "Register", new_user_registration_path %></li>
      <li><%= link_to "Login", new_user_session_path %></li>
      <% end %>
    </ul>
  </nav>
</header>
```
* Currently we are missing a user index and a user show page. Devise didn't create these for us, so let's make them. As we only need two routes (index and show), we won't use scaffold. The other routes (create, update, delete etc.) are being done by Devise. Use the following command to create the additional routes we need for our User: `rails g controller users index show`.

*Open up your new `users_controller.rb` and add the following to your index and show methods:
​
```ruby
class UsersController < ApplicationController
  def index
    @users = User.all
  end
​
  def show
    @user = User.find(params[:id])
  end
end
```


*Inside `views/users/index.html.erb` add:
​
```ruby
<h1>All Users</h1>
​
<% @users.each do |user| %>
  <%= user.email  %>
<% end %>
```

*Inside `config/routes.rb` let's change it to be:
​
```ruby
Rails.application.routes.draw do
  resources :resources do
    resources :bookings
  end
  root "bikes#index"
  resources :bikes
  devise_for :users
  resources :users, only: [:index, :show]
end
```
* We can now add a few extra links to our header - a link to our user index page, our current user profile page, and an edit profile page. 
​
```ruby
<li><%= link_to "Users", users_path %></li>
<li><%= link_to "My Profile", current_user %></li>
<li><%= link_to "Edit My Profile", edit_user_registration_path %></li>
```

*If we want our user to add additional information when they register, we need to add these fields to our form. In `views/devise/registrations/new.html.erb` and `views/devise/registrations/edit.html.erb` we can add the following below our email field.

```ruby
<div class="field">
  <%= f.label :username %><br />
  <%= f.text_field :username %>
</div>
​
<div class="field">
  <%= f.label :image %><br />
  <%= f.text_field :image%>
</div>
```
* We added image and username columns to our table when we created our User model with Devise, but we still need to add them into our strong params, so that when we submit the form they are accepted into our database. To do this, let's add the following code inside out `application_controller.rb`:

```
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
    # my custom fields are :username, :image
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:username, :image, :email, :password, :password_confirmation)
      end

      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit(:username, :image, :email, :password, :password_confirmation, :current_password)
      end
    end
end
```
* We need to define our relationship between bikes and users. Inside our User model add `has_many :bikes`, and inside our bikes model, add `belongs_to :user`.

*When we create a new bike, we want it to be associated with the user currently logged in. Inside `bikes_controller.rb`, inside our create method, we can change `@bike = Bike.new(bike_params)` to be `@bike = current_user.bikes.new(bike_params)`. This will add the new bike to our current user's bikes, as it is being created. 

*Migrate new columns for name, username, name, bio, image

*Add forign keys for booking:
```
class Booking < ActiveRecord::Base
  include Bookable

  belongs_to :bike
  belongs_to :rider, class_name: 'User', foreign_key:'rider_id'
end
```
*Add foreign keys for users
```
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bikes, class_name: 'Bike', foreign_key: 'owner_id', dependent: :destroy

  has_many :bookings, class_name: 'Booking', foreign_key: 'rider_id', dependent: :destroy
end
```

*Set up booking with current user in Bookings controller
```
def create
  @booking =  current_user.bookings.new(params[:booking].permit(:bike_id, :start_time, :length))   
```





