# frozen_string_literal: true

class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :about
      t.string :category
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
