# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview
  def contact_email
    @name = "Michael"
    @last_name = "Kuhlmeier"
    @email = "test@gmail.com"
    @message = "Does this work?"

    ContactMailer.with(name: @name, last_name: @last_name, email: @email, message: @message).contact_email.deliver_now

  end
end
