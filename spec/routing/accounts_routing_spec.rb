require "rails_helper"

RSpec.describe AccountsController, type: :routing do
  describe "routing" do

    it "not routes to #index" do
      expect(:get => "/accounts").not_to route_to("accounts#index")
    end

    it "not routes to #new" do
      expect(:get => "/accounts/new").not_to route_to("accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/accounts/1").to route_to("accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/accounts/1/edit").to route_to("accounts#edit", :id => "1")
    end

    it "not routes to #create" do
      expect(:post => "/accounts").not_to route_to("accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/accounts/1").to route_to("accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/accounts/1").to route_to("accounts#update", :id => "1")
    end

    it "not routes to #destroy" do
      expect(:delete => "/accounts/1").not_to route_to("accounts#destroy", :id => "1")
    end

  end
end
