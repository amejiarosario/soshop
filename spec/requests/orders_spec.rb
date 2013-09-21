require 'spec_helper'

describe "Orders" do
  let(:user) { FactoryGirl.create :user }

  describe "GET /orders" do
  end

  describe "GET /orders/new" do
    # set user
    context 'when user not signed in' do
      it 'should redirect to sign in page' do
        visit new_order_path
        page.current_path.should == new_user_session_path
      end
    end

    context 'when user is signed in' do
      it 'should see order' do
        login_as user, scope: :user
        visit new_order_path
        page.current_path.should == new_order_path
      end
    end
  end

  describe "POST /orders", "Create Order" do
    it "should be able to pay with credit card" do
      login_as user, scope: :user
      visit new_order_path
      fill_in 'Full Name', with: 'Adrian Mejia'
      fill_in 'Email Address', with: 'me@adrianmejia.com'
      fill_in 'Card Number', with: '411111111111'
      select 'December', from: :card_month
      select Date.today.year+5, from: :card_year
      click_button 'Create Order'
      #page.should_not have_content 'errors'
      save_and_open_page
      page.should have_content 'Order was successfully created.'
    end

    it "should be able to pay with paypal"

    it "should fill out delivery method"
  end
end
