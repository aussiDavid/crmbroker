module AccountsHelper
  def active_crms
    @account
      .connections
      .map(&:crm)
  end
end
