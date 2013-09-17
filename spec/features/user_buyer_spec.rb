require 'spec_helper'

describe 'user buyer' do
	let(:user) { FactoryGirl.create :user }
	let(:product) { FactoryGirl.create :product, user: user }

  # it 'should redirect to payment methods' do
  #   visit product_path(product)
  #   click_link 'Buy Now'
  #   expect(page).to_not have_content('Pay methods')
  # end

  before do
  end

	it 'should click the buy now button' do
		visit product_path(product)
		click_link 'Buy Now'
		page.current_path.should == new_order_path
		#save_and_open_page
		#expect(page).to_not have_content('You need to sign in or sign up before continuing.')
		#click_link 'Sign in with Facebook'
	end
end
