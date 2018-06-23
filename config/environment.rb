# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
      address: "smtp.163.com",
      port: 25,
      domain: "wangchen.com",
      authentication: "plain",
      user_name: "15895560771@163.com",
      password: "qhwc2009",
      enable_starttls_auto: true
  }
end