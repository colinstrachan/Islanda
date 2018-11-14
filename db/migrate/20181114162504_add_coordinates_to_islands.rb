class AddCoordinatesToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :latitude, :float
    add_column :islands, :longitude, :float
  end
end
