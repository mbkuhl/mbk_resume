class ContactMailer < ApplicationMailer
  default to: 'kuhlmmb@gmail.com'

  def contact_email
    @name = params[:name]
    @last_name = params[:last_name]
    @email = params[:email]
    @message = params[:message]
    
    mail(from: @email, subject: "Contact from #{@name} #{@last_name}")
  end
end
