class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :bikes, :features do |t|
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    end
  end
end
