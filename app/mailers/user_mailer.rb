class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_welcome_notification.subject
  #
  def user_welcome_notification(user)
    @greeting = "Hi"
    @user = user

    mail to: @user.email
  end
end
