class AddSemesterToInsides < ActiveRecord::Migration[5.0]
  def change
    add_column :insides, :semester, :string
  end
end
