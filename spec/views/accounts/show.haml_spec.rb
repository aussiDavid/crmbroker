require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, create(:account))
    render
  end

  it "renders incoming email" do
    expect(rendered).to match(@account.incoming_email)
  end

  it "renders outgoing email" do
    expect(rendered).to match(@account.outgoing_email)
  end
end
