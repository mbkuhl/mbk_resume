class ContactMailer < ApplicationMailer
  default to: 'kuhlmmb@gmail.com'

  def contact_email
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
  
    mail(from: @email, subject: "Contact from #{@name}")
  end

  def confirmation_email
    @name = params[:name]
    @last_name = params[:last_name]
    @email = params[:email]
    @message = params[:message]
  
    mail(from: 'kuhlmb@gmail.com', to: @email, subject: "Confirmation of email to Michael Kuhlmeier")
  end
end
