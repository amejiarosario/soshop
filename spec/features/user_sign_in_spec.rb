require 'spec_helper'

describe "User Sign In" do
  let!(:user) { FactoryGirl.create(:user) }

  before do
    visit root_path
    click_link('Login')
  end

  context "failure" do
    before do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: ''
      click_button 'Sign in'
    end

    it "displays an error message" do
      expect(page).to have_content('Invalid email or password.')
    end

    it "shows the correct navigation links" do
      expect(page).to have_selector(:link_or_button, 'Sign in')
      expect(page).to have_selector(:link_or_button, 'Sign up')
      expect(page).to_not have_selector(:link_or_button, 'Profile')
      expect(page).to_not have_selector(:link_or_button, 'Sign out')
    end
  end

  context "success" do
    before do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign in'
    end

    it "displays a welcome message" do
      expect(page).to have_content('Signed in successfully.')
    end

    it "shows the correct navigation links" do
      expect(page).to_not have_selector(:link_or_button, 'Sign in')
      expect(page).to_not have_selector(:link_or_button, 'Sign up')
      page.should have_xpath("//a[contains(@href,'users/edit')]")
      expect(page).to have_selector(:link_or_button, 'Logout')
    end
  end
end
