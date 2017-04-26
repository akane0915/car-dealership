require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The dealership path', {:type => :feature}) do
  it('visits homepage and clicks add new dealership') do
    visit('/')
    click_link('add_new_dealership')
    expect(page).to have_content('Enter the Dealership name:')
  end

  it('collect user input dealership name and routes to dealership success page') do
    visit('/dealerships/new')
    fill_in('name', :with => 'Bobs Dealership')
    click_button('Add Dealership')
    expect(page).to have_content("Success! You've added a dealership!")
  end

  it('collect the user input for a vehicles make, model, and year') do
    visit('dealerships/1/vehicles/new')
    fill_in('make', :with => 'Toyota')
    fill_in('model', :with => 'Prius')
    fill_in('year', :with => '2016')
    click_button('Add Vehicle')
    expect(page).to have_content("Success! You've added a vehicle!")
  end
end
