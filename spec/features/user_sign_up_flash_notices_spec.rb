require 'spec_helper'

describe "User Sign Up Flash Notices", js: true, slow: true do
  before do
    # When an unauthenticated user visits
    # the edit_user_registration_path they
    # are redirected with a flash notice
    visit edit_user_registration_path
  end

  it "can be dismissed by the user" do
    expect(page).to have_content("need to sign in or sign up")

    within('.alert') do
      find('.close').click
    end

    expect(page).to_not have_content("need to sign in or sign up")
  end
end
