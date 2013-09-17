require 'spec_helper'

describe "payment_methods/new" do
  before(:each) do
    assign(:payment_method, stub_model(PaymentMethod,
      :user => nil,
      :type => "",
      :options => "MyText"
    ).as_new_record)
  end

  it "renders new payment_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_methods_path, "post" do
      assert_select "input#payment_method_user[name=?]", "payment_method[user]"
      assert_select "input#payment_method_type[name=?]", "payment_method[type]"
      assert_select "textarea#payment_method_options[name=?]", "payment_method[options]"
    end
  end
end
