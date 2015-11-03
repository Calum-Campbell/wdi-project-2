class AddColumnToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :short_description, :text
  end
end
