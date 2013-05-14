class Notifications < ActionMailer::Base
  def feedback(from, comment)
    mail from: from,
         to: "feedback@example.com",
         subject: "Feedback",
         body: comment
  end
end
