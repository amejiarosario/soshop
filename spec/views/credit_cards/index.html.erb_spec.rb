require 'spec_helper'

describe "credit_cards/index" do
  before(:each) do
    assign(:credit_cards, [
      stub_model(CreditCard,
        :first_name => "First Name",
        :last_name => "Last Name",
        :number => "Number",
        :month => "Month",
        :year => "Year",
        :ccv => "Ccv"
      ),
      stub_model(CreditCard,
        :first_name => "First Name",
        :last_name => "Last Name",
        :number => "Number",
        :month => "Month",
        :year => "Year",
        :ccv => "Ccv"
      )
    ])
  end

  it "renders a list of credit_cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Month".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Ccv".to_s, :count => 2
  end
end
