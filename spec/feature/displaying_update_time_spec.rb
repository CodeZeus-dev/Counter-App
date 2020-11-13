require 'capybara/rspec'
require_relative '../../app'

Capybara.app = CounterApp

feature 'display the time of last update of the count value' do
  scenario 'displays the time of last update when clicking on the Increment button' do
    visit '/'
    expect(page).to have_content(0)
    expect(page).to have_button('Increment')
    click_button('Increment')
    expect(page).to have_content(1)
    expect(page).to have_button('Increment')
    expect(page).to have_content(/(\d{2}(\:)){2}\d{2}/)
  end
end