class RemoveColumnFromFeatures < ActiveRecord::Migration
  def change
    remove_column :features, :helmet  
    remove_column :features, :lock  
    remove_column :features, :light  
    remove_column :features, :mud_guard  
  end
end
