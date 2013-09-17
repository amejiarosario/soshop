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
    it "should be able to create order" do
      login_as user, scope: :user
      visit new_order_path
      pending 'select payment method & delivery method'
    end
  end
end
