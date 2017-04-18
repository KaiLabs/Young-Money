class AddLinkToInside < ActiveRecord::Migration[5.0]
  def change
    add_column :insides, :link, :string
  end
end
