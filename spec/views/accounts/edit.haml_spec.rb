require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign :account, create(:account)    
  end

  it "renders the edit account form" do
    render
    
    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_email[name=?]", "account[email]"

    end
  end

  it "renders a hubspot button" do
    @account = assign :account, create(:account, :with_hubspot_crm)    
    render

    expect(rendered).to match /hubspot/i
  end

  it "renders a REST button" do
    @account = assign :account, create(:account, :with_rest_crm)    
    render

    expect(rendered).to match /rest/i
  end

end
