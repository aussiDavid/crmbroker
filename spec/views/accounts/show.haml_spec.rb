require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, create(:account))
    render
  end

  it "renders email" do
    expect(rendered).to match(@account.email)
  end
end
