class ContactController < ApplicationController

  def new

  end

  def create
    @name = params[:name]
    @last_name = params[:last_name]
    @email = params[:email]
    @message = params[:message]
    if @name.present? && @email.present? && @message.present?
      ContactMailer.with(name: @name, last_name: @last_name, email: @email, message: @message).contact_email.deliver_now
      ContactMailer.with(name: @name, last_name: @last_name, email: @email, message: @message).confirmation_email.deliver_now
      # Perform any necessary actions with the form data
      flash[:success] = "Your message has been sent successfully."
      redirect_to "/contact"
    else
      flash[:danger] = "Please fill in all fields"
      redirect_to "/contact"
    end
  end
end