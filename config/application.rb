require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CRMthis
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      g.template_engine :haml
    end

    config.action_mailer.delivery_method = :smtp
    # SMTP settings for mailgun
    ActionMailer::Base.smtp_settings = {
      :port           => 587,
      :address        => 'smtp.mailgun.org',
      :domain         => 'mg.davidmilanese.com',
      :user_name      => 'postmaster@mg.davidmilanese.com',
      :password       => '619474c08e769daa206b5e28bf90982f',
      :authentication => :plain
    }
  end
end

