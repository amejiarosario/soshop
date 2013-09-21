require 'spec_helper'

describe Users::OmniauthCallbacksController do
  let(:email){ 'me@adrianmejia.com' }


  context 'when sign in' do
    before do
      set_omniauth(info: { email: email})
      visit root_path
      click_link 'Sign in with Facebook'
    end

    it 'should have successfull message and email' do
      expect(page).to have_content 'Successfully authenticated from Facebook account'
      expect(page).to have_content email
    end
  end

  context 'when invalid auth data' do
    before do
      set_invalid_omniauth
      visit root_path
      click_link 'Sign in with Facebook'
    end

    it 'should have unsuccessfull message' do
      expect(page).to have_content 'Could not authenticate you from Facebook'
    end
  end
end