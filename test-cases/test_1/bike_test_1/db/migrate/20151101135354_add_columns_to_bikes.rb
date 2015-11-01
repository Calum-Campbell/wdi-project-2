class AddColumnsToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :image, :text
    add_column :bikes, :owner_id, :integer
    add_column :bikes, :description, :text
  end
end
