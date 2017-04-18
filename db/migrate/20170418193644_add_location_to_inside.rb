class AddLocationToInside < ActiveRecord::Migration[5.0]
  def change
    add_column :insides, :location, :string
  end
end
