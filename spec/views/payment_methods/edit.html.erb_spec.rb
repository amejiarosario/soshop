require 'spec_helper'

describe "payment_methods/edit" do
  before(:each) do
    @payment_method = assign(:payment_method, stub_model(PaymentMethod,
      :user => nil,
      :type => "",
      :options => "MyText"
    ))
  end

  it "renders the edit payment_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_method_path(@payment_method), "post" do
      assert_select "input#payment_method_user[name=?]", "payment_method[user]"
      assert_select "input#payment_method_type[name=?]", "payment_method[type]"
      assert_select "textarea#payment_method_options[name=?]", "payment_method[options]"
    end
  end
end
