class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bikes, class_name: 'Bike', foreign_key: 'owner_id', dependent: :destroy

  has_many :bookings, class_name: 'Booking', foreign_key: 'rider_id', dependent: :destroy
end
