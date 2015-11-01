Rails.application.routes.draw do
  resources :bikes do
    resources :bookings
  end
  root "bikes#index"
  resources :bikes
  devise_for :users
  resources :users, only: [:index, :show]

  controller :pages do
    get :about
    get :contact
  end
end

