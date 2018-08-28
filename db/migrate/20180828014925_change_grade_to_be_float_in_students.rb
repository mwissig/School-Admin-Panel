class ChangeGradeToBeFloatInStudents < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :grade, :float
  end
end
