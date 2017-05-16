class Employee < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 255}, uniqueness: true
  validates :position, presence: true
  validate  :name_check, :date_of_birth_cannot_be_in_the_past

  belongs_to :position

  def name_check
    name = :name.to_s.split
    if name.count == 3
      redirect_to @employee, notice: 'Record was successfully created.'
    else
      errors.add(:name, "field will contain name, surname and lastname")
    end
  end

  def date_of_birth_cannot_be_in_the_past
    if dateofbirth.parse('2010-11-01') > Time.now
      errors.add(:dateofbirth, "can't be in the future")
    end
  end

end
