class UserMailer < ApplicationMailer
  def signup_confirmation user
    @greeting = "Hi"

    mail to: user.email
  end
end
