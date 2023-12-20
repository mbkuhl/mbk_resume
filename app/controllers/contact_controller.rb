class ContactController < ApplicationController

  def new 

  end

  def create
    @name = params[:contact_form][:name]
    @last_name = params[:contact_form][:last_name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]
    ContactMailer.with(name: @name, last_name: @last_name, email: @email, message: @message).contact_email.deliver_now
    # Perform any necessary actions with the form data
    flash[:success] = "Your message has been sent successfully."
    redirect_to "/contact"
end

end