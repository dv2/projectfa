require 'spec_helper'

feature 'Login as a user' do
  scenario 'page should have correct info' do
    visit root_path
    click_link 'Login'
    expect(page).to have_title('FutureAndhra.com - Login Page')

    expect(page).to have_content('Sign in')
    expect(page).to have_link('Sign in with facebook')

    expect(page).to have_link('Vote by clicking here!')

    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
    expect(page).to have_content('Remember me')
    expect(page).to have_button('Sign in')
    expect(page).to have_link('Sign up')
    expect(page).to have_link('Forgot your password?')
  end
end