class AddBikeImageToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :bike_image, :string
  end
end
