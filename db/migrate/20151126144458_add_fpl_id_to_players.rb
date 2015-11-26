class AddFplIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :fpl_id, :string
  end
end
