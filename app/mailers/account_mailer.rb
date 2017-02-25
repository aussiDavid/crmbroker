class AccountMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.account_mailer.forward.subject
  #
  def forward body, recipent
    return nil if recipent.blank?
    return nil if body.blank?

    @body = body

    mail to: recipent
  end
end
