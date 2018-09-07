class ChangeAgeToBeDateInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :age, :date
  end
end
