class AddIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :rider_id, :integer
  end
end
