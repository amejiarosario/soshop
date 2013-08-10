require 'spec_helper'

describe 'OminAuth Facebook' do
	it 'user sign up' do
		visit root_path
		click_button 'Sign In with Facebook'
	end
	it 'user sign in'
	it 'user link devise with facebook auth'
end