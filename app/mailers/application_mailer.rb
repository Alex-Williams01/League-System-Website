class ApplicationMailer < ActionMailer::Base
  default to: "info@nationalleague.com", from: "info@nationalleague.com"
  layout 'mailer'
end
