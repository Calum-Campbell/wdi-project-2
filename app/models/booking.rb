require_relative './concerns/bookable'

class Booking < ActiveRecord::Base
  include Bookable

  belongs_to :bike
  belongs_to :rider, class_name: 'User', foreign_key:'rider_id'

  default_scope { order("start_time ASC") }
  scope :upcoming, -> (n) { where("bike_id = ? AND end_time >= ?", n.id, Time.now) }

end