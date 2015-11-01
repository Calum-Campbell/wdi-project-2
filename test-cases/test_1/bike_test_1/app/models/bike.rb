class Bike < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id' 
  has_many :bookings, dependent: :destroy

end
