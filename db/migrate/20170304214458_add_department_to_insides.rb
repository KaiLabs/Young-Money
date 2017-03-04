class AddDepartmentToInsides < ActiveRecord::Migration[5.0]
  def change
    add_column :insides, :department, :string
  end
end
