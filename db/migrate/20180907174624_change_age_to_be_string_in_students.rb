class ChangeAgeToBeStringInStudents < ActiveRecord::Migration[5.2]
  def change
        change_column :students, :age, :string
  end
end
