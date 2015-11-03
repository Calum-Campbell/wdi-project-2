require_relative './concerns/bookable'

class Booking < ActiveRecord::Base
  include Bookable

  belongs_to :bike
  belongs_to :rider, class_name: 'User', foreign_key:'rider_id'
end