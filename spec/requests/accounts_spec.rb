require 'rails_helper'

RSpec.describe "Accounts", type: :request do      
  
  before :each do 
    sign_in create(:account)
  end

  after :each do 
    expect(response).to have_http_status(200)
  end

  describe "GET /account" do
    it "is succesful" do
      get account_path
    end
  end

  describe "GET /account/edit" do
    it "is succesful" do
      get edit_account_path
    end
  end
end
