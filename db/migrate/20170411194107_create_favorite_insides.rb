class CreateFavoriteInsides < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_insides do |t|
      t.integer :inside_id
      t.integer :user_id

      t.timestamps
    end
  end
end
