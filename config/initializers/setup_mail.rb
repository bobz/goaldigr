# Load mail configuration if not in test environment
if RAILS_ENV != 'test'
  ActionMailer::Base.smtp_settings = {
    :address            => "smtp.gmail.com",
	:port               => 587,
	:domain				=> "bobz.in",
	:user_name			=> "goaldigr@bobz.in",
	:password			=> "GoalDigr12344",
	:authentication		=> "plain",
	:enable_starttls_auto	=> true
  }

  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default_url_options = { :host => "localhost:3000" }
  # config.action_mailer.default_charset = "utf-8"  

end
