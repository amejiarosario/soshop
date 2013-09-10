require 'spec_helper'

describe Users::OmniauthCallbacksController do
  let(:email){ 'me@adrianmejia.com' }

  before do
    set_omniauth(info: { email: email})
  end

  context 'when sign in' do
    before do
      visit root_path
      click_link 'Sign in with Facebook'
    end

    it 'should have successfull message and email' do
      expect(page).to have_content 'Successfully authenticated from Facebook account'
      expect(page).to have_content email
    end
  end

  it 'user sign in'
  it 'user link devise with facebook auth'
end