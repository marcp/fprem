class AddIndexOnFplIdToPlayers < ActiveRecord::Migration
  def change
    add_index :players, :fpl_id, unique: true
  end
end
