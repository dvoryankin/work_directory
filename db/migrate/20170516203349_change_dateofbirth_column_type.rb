class ChangeDateofbirthColumnType < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :dateofbirth
    add_column :employees, :dateofbirth, :datetime
  end
end
