require 'rails_helper'

feature 'Create position', %q{
  I want to be able to create position
} do

  scenario 'Create position' do
    visit root_path
    click_on 'Positions'
    click_on 'New Position'
    position_text = 'Engineer'
    fill_in 'Title', with: position_text
    click_on 'Create'
    expect(page).to have_content 'Position was successfully created.'
  end

  scenario 'Create position with invalid attributes' do
    visit root_path
    click_on 'Positions'
    click_on 'New Position'
    fill_in 'Title', with: ''
    click_on 'Create'
    expect(page).to have_content "Title can't be blank"
  end
end