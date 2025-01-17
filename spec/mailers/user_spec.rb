require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "user_welcome_notification" do
    let(:mail) { UserMailer.user_welcome_notification }

    it "renders the headers" do
      expect(mail.subject).to eq("User welcome notification")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end
