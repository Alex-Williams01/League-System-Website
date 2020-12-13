class HomeController < ApplicationController
  #home action of Home controller
  def home
  end

  #contact action of Home controller
  def contact
  end

  #request_contact action of Home controller
  def request_contact
    #form values from params added to relevant variables
     name = params[:name]
     email = params[:email]
     telephone = params[:telephone]
     message = params[:message]

     #make sure if there is no email address notify the user
     if email.blank?
       flash[:alert] = I18n.t('home.request_contact.no_email')
     else
       #if there is an email address send an email and notify the user
       ContactMailer.contact_email(email, name, telephone, message).deliver_now
       flash[:notice] = I18n.t('home.request_contact.email_sent')
     end
     #redisplay the root path
     redirect_to root_path
   end

  def about
  end
end
