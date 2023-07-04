class AddOccupiedToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :occupied, :boolean
  end
end
