class ApplicationMailer < ActionMailer::Base
  #superclass to contact_mailer
  #initialises default properties for email sent
  default to: "info@nationalleague.com", from: "info@nationalleague.com"
  layout 'mailer'
end
