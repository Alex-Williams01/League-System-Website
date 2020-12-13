class ContactMailer < ApplicationMailer
  #method used to send an email
  def contact_email(email, name, telephone, message)
    #sets all local variables for email to respective arguments input
     @email = email
     @name = name
     @telephone = telephone
     @message = message

     #sends email
     mail cc: @email
  end
end
