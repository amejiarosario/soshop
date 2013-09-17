require "spec_helper"

describe DeliveryMethodsController do
  describe "routing" do

    it "routes to #index" do
      get("/delivery_methods").should route_to("delivery_methods#index")
    end

    it "routes to #new" do
      get("/delivery_methods/new").should route_to("delivery_methods#new")
    end

    it "routes to #show" do
      get("/delivery_methods/1").should route_to("delivery_methods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/delivery_methods/1/edit").should route_to("delivery_methods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/delivery_methods").should route_to("delivery_methods#create")
    end

    it "routes to #update" do
      put("/delivery_methods/1").should route_to("delivery_methods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/delivery_methods/1").should route_to("delivery_methods#destroy", :id => "1")
    end

  end
end
