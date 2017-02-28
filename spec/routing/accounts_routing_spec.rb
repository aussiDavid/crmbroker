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
      expect(:get => "/account").to route_to("accounts#show")
    end

    it "routes to #edit" do
      expect(:get => "/account/edit").to route_to("accounts#edit")
    end

    it "not routes to #create" do
      expect(:post => "/accounts").not_to route_to("accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/account").to route_to("accounts#update")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/account").to route_to("accounts#update")
    end

    it "not routes to #destroy" do
      expect(:delete => "/account").not_to route_to("accounts#destroy")
    end

  end
end
