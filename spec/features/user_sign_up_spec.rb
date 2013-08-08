require 'spec_helper'

describe 'User Sign Up' do
  before do
    visit root_path
    click_link('Sign up')
  end

  context 'failure' do
    before do
      fill_in 'Email', with: ''
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
      click_button 'Sign up'
    end

    it 'displays an error message' do
      expect(page).to have_content('can\'t be blank')
    end

    it 'shows the correct navigation links' do
      expect(page).to have_selector(:link_or_button, 'Sign up')
    end    
  end

  context 'success' do
    before do
      fill_in 'Email', with: 'jill@example.com'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
      click_button 'Sign up'
    end

    it 'displays a welcome message' do
      expect(page).to have_content('signed up successfully')
    end

    it 'shows the correct navigation links' do
      expect(page).to have_selector(:link_or_button, 'Logout')
    end
  end
end
