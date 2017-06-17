class UserMailerPreview < ActionMailer::Preview
  def welcome
    UserMailer.welcome(User.first.id)
  end
end
