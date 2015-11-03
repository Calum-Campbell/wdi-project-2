class Bike < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode

  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id' 
  has_many :bookings, dependent: :destroy

  has_and_belongs_to_many :features
end
