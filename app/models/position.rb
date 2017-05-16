class Position < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 50}

  has_many :employees

end