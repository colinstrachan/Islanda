class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :name
      t.integer :price
      t.string :location
      t.string :climate
      t.text :description
      t.integer :capacity

      t.timestamps
    end
  end
end
