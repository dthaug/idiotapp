require "spec_helper"

describe DilemmasController do
  describe "routing" do

    it "routes to #index" do
      get("/dilemmas").should route_to("dilemmas#index")
    end

    it "routes to #new" do
      get("/dilemmas/new").should route_to("dilemmas#new")
    end

    it "routes to #show" do
      get("/dilemmas/1").should route_to("dilemmas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dilemmas/1/edit").should route_to("dilemmas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dilemmas").should route_to("dilemmas#create")
    end

    it "routes to #update" do
      put("/dilemmas/1").should route_to("dilemmas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dilemmas/1").should route_to("dilemmas#destroy", :id => "1")
    end

  end
end
