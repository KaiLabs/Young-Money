class CreateInsides < ActiveRecord::Migration[5.0]
  def change
    create_table :insides do |t|
      t.string :name
      t.date :deadline
      t.string :category
      t.string :location
      t.string :department
      t.string :semester
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
