require 'rails_helper'

RSpec.describe Employee, type: :model do
  it 'validates presence of name' do
    expect(Employee.new(name: '',dateofbirth: "#{Date.today - rand(40).years}")).to_not be_valid
  end

  it 'validates maximum length of name' do
    expect(Employee.new(name: "#{SecureRandom.base64(257)}",
                        dateofbirth: "#{Date.today - rand(40).years}")).to_not be_valid
  end

  it 'validates date can not be in the future' do
    expect(Employee.new(name: "#{SecureRandom.base64(57)}",
                        dateofbirth: "#{Date.today + 1.years}")).to_not be_valid
  end

  it 'validates name to contain three words' do
    expect(Employee.new(name: "dfassfdsfd asdfasfd asdfasfdsadf",
                        dateofbirth: "#{Date.today - rand(40).years}")).to_not be_valid
  end
end
