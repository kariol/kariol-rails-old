class UserMailer < ApplicationMailer
  include Devise::Mailers::Helpers

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user_id)
    @user = User.find(user_id).decorate

    mail to: @user.email
  end

  def confirmation_instructions(record, token, opts={})
    @token = token
    devise_mail(record, :confirmation_instructions, opts)
  end

  def reset_password_instructions(record, token, opts={})
    @token = token
    devise_mail(record, :reset_password_instructions, opts)
  end

  def unlock_instructions(record, token, opts={})
    @token = token
    devise_mail(record, :unlock_instructions, opts)
  end
end
