require 'spec_helper'

describe "Cancel Registration" do
  let!(:user) { FactoryGirl.create(:user) }

  before do
    # Sign in
    visit root_path
    click_link 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    # Cancel registration
    click_link 'Profile'
    click_button 'Cancel my account'
    # page.driver.browser.switch_to.alert.accept unless Capybara.javascript_driver == :poltergeist
  end



  it "does not allow the user to sign in again" do
    # Try to sign in again
    click_link 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    expect(page).to have_content("Invalid email or password")
  end
end
