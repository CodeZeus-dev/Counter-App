require 'capybara/rspec'
require_relative '../../app'

Capybara.app = CounterApp

feature 'reset the count' do
  scenario 'click on the reset button and see the count go back to 0' do
    visit '/'
    expect(page).to have_content(0)
    expect(page).to have_button('Increment')
    click_button('Increment')
    expect(page).to have_content(1)
    expect(page).to have_button('Reset')
    click_button('Reset')
    expect(page).to have_content(0)
  end
end