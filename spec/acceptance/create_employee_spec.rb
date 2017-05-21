require_relative '../rails_helper'

feature 'Create employee', %q{
  I want to be able to create employee
} do

  scenario 'Create Employee' do
    visit root_path
    click_on 'Employees'
    click_on 'New Employee'
    employee_name = 'Ivanov Ivan Ivanovich'
    fill_in 'Name', with: employee_name
    option = first('#employee_select_id option')

    select "Doctor", :from => "employee[position_id]"
    select("1990,December,7", :from => "date_select")
    click_on 'Create Employee'
    expect(page).to have_content 'Employee was successfully created.'
  end

  scenario 'Create employee with invalid attributes' do
    visit root_path
    click_on 'Employees'
    click_on 'New Employee'
    fill_in 'Name', with: ''
    click_on 'Create'
    expect(page).to have_content "Name can't be blank"
  end
end