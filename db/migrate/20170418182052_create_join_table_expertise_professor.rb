class CreateJoinTableExpertiseProfessor < ActiveRecord::Migration[5.0]
  def change
    create_join_table :years, :insides do |t|
      # t.index [:year_id, :inside_id]
      # t.index [:inside_id, :year_id]
    end
  end
end
