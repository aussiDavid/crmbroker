class EmailProcessor
  def initialize(email)
    @body = email.body
    @account = Account.find_by_email email.from
    @extract = EmailerService.perform email
  end

  def process
    if @account and @extract
      forward_to_crms 
    else
      no_account_found
    end
  end

  private
  # Process the email for each attached CRM
  def forward_to_crms
    @account
      .crms
      .each{|crm|
        CrmService.perform(
          crm: crm,
          name: @extract["Name"],
          phone: @extract["Phone"],
          email: @extract["Email"],
          enquiry: @extract["I would like to"]
        )
      }
  end

  # Return nil to indicate the email could not be processed
  def no_account_found
    # Send outgoing email
    # AccountMailer.forward(@email.raw_html, @account.email).deliver_now

    nil
  end
end