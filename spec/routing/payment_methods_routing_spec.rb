require "spec_helper"

describe PaymentMethodsController do
  describe "routing" do

    it "routes to #index" do
      get("/payment_methods").should route_to("payment_methods#index")
    end

    it "routes to #new" do
      get("/payment_methods/new").should route_to("payment_methods#new")
    end

    it "routes to #show" do
      get("/payment_methods/1").should route_to("payment_methods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/payment_methods/1/edit").should route_to("payment_methods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/payment_methods").should route_to("payment_methods#create")
    end

    it "routes to #update" do
      put("/payment_methods/1").should route_to("payment_methods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/payment_methods/1").should route_to("payment_methods#destroy", :id => "1")
    end

  end
end
