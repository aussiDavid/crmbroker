require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :incoming_email => "MyString",
      :outgoing_email => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_incoming_email[name=?]", "account[incoming_email]"

      assert_select "input#account_outgoing_email[name=?]", "account[outgoing_email]"
    end
  end
end
