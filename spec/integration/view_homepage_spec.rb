require 'spec_helper'

feature 'View the home page' do
  scenario 'user sees relevant information - when NOT LOGGED IN' do
    visit root_path
    expect(page).to have_title('FutureAndhra.com - Home Page')
    expect(page).to have_link('Home')
    expect(page).to have_link('Sign up')
    expect(page).to have_link('Login')
    expect(page).not_to have_content('Logged in as')
    expect(page).not_to have_link('Activities')
    expect(page).to have_content('Suggestions? Contact me: spaceonce@gmail.com')
  end

  # scenario 'user sees relevant information - when LOGGED IN' do
  #   visit root_path
  #   expect(page).to have_title('FutureAndhra.com - Home Page')
  #   expect(page).to have_link('Home')
  #   expect(page).to have_link('Sign up')
  #   expect(page).to have_link('Login')
  #   expect(page).to have_content('Suggestions? Contact me: spaceonce@gmail.com')
  # end
end