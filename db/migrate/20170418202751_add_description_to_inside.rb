class AddDescriptionToInside < ActiveRecord::Migration[5.0]
  def change
    add_column :insides, :description, :string
  end
end
