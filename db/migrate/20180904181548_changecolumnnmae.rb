class Changecolumnnmae < ActiveRecord::Migration[5.2]
  def change
    rename_column :cohorts, :instructor_id, :user_id
  end
end
