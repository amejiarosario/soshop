require 'spec_helper'

describe "User Sign Down" do
  let!(:user) { FactoryGirl.create(:user) }

  before do
    # Sign in
    visit root_path
    click_link 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    # Cancel registration
    click_link user.email
    click_button 'Cancel my account'
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
