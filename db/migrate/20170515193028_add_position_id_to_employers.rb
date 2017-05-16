class AddPositionIdToEmployers < ActiveRecord::Migration
  def change
    add_belongs_to :employees, :position
  end
end