class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :house_id
      t.timestamps
    end
    add_index :favorites, :house_id
    add_index :favorites, :user_id
  end
end
