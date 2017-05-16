class Employee < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 255}, uniqueness: true
  validates :position, presence: true

  belongs_to :position
end
