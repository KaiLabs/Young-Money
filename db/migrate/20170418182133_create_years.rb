class CreateYears < ActiveRecord::Migration[5.0]
  def change
    create_table :years do |t|
      t.string :year

      t.timestamps
    end
  end
end
