class UserMailerPreview < ActionMailer::Preview
  def user_welcome_notification
    UserMailer.user_welcome_notification(user)
  end

  private

  def user
    @user ||= FactoryBot.build(:user)
  end
end