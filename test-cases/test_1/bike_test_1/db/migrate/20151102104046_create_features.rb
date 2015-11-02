class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.boolean :helmet
      t.boolean :lock
      t.boolean :light
      t.boolean :mud_guard

      t.timestamps null: false
    end
  end
end
