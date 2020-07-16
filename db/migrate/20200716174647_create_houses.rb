class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :about
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end
