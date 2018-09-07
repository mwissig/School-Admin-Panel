class ChangeAgeToBeDateInStudents < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :age, :date
  end
end
