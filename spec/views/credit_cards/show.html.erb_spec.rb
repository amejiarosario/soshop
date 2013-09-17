require 'spec_helper'

describe "credit_cards/show" do
  before(:each) do
    @credit_card = assign(:credit_card, stub_model(CreditCard,
      :first_name => "First Name",
      :last_name => "Last Name",
      :number => "Number",
      :month => "Month",
      :year => "Year",
      :ccv => "Ccv"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Number/)
    rendered.should match(/Month/)
    rendered.should match(/Year/)
    rendered.should match(/Ccv/)
  end
end
