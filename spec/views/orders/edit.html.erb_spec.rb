require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :user => nil,
      :delivery_method => nil,
      :payment_method => nil,
      :product => nil
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "input#order_user[name=?]", "order[user]"
      assert_select "input#order_delivery_method[name=?]", "order[delivery_method]"
      assert_select "input#order_payment_method[name=?]", "order[payment_method]"
      assert_select "input#order_product[name=?]", "order[product]"
    end
  end
end
