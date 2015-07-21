class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
  	mail(to: "chaudhary.fsl@gmail.com",
  		subject: "A Comment has been added to your place")
  end
end
