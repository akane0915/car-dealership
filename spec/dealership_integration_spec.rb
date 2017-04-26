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


  # it('Processes user inputs and returns the new vehicle') do
  #   visit('/dealerships/:id/vehicles/new')
  #   fill_in('make', :with => 'Toyota')
  #   fill_in('model', :with => 'Prius')
  #   fill_in('year', :with => '2000')
  #   click_button('Add Vehicle')
  #   expect(page).to have_content('Toyota, Prius, 2000')
  # end
end
