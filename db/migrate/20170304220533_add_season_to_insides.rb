class AddSeasonToInsides < ActiveRecord::Migration[5.0]
  def change
    add_column :insides, :season, :string
  end
end
