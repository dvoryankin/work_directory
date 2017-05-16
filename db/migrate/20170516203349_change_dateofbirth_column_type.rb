class ChangeDateofbirthColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :employees, :dateofbirth, :datetime
  end
end
