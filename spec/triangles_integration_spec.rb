require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("Triangles '/result' path", {:type => :feature}) do
  it('return the type of triangle') do
    visit('/')
    fill_in('side1', :with => '2')
    fill_in('side2', :with => '2')
    fill_in('side3', :with => '2')
    click_button('Find Triangle Type')
    expect(page).to have_content("Equilateral Triangle")
  end

  it('return it is not a triangle') do
  visit('/')
  fill_in('side1', :with => '2')
  fill_in('side2', :with => '2')
  fill_in('side3', :with => '8')
  click_button('Find Triangle Type')
  expect(page).to have_content("This is not a triangle")
  end
end
