# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview
  def contact_email
    @name = "Fake"
    @last_name = "Person"
    @email = "test@gmail.com"
    @message = "Does this work?"

    ContactMailer.with(name: @name, last_name: @last_name, email: @email, message: @message).contact_email.deliver_now

  end
  def confirmation_email
    @name = "Fake"
    @last_name = "Person"
    @email = "test@gmail.com"
    @message = "Does this work?"

    ContactMailer.with(name: @name, last_name: @last_name, email: @email, message: @message).confirmation_email.deliver_now

  end
end
