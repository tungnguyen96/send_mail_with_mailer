require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "SignupConfirmation" do
    mail = UserMailer.SignupConfirmation
    assert_equal "Signupconfirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
