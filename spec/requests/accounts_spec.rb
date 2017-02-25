require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  describe "GET /account/:id" do
    it "is succesful" do
      account = create :account
      get account_path(account)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /account/:id/edit" do
    it "is succesful" do
      account = create :account
      get edit_account_path(account)
      expect(response).to have_http_status(200)
    end
  end
end
