class NotificationsMailer < ActionMailer::Base
  default from: "winston.thorman@gmail.com"
  # default to: "froeal01@gmail.com"

  def new_message(message)
  	@message = message
  	mail(to: 'froeal01@gmail.com', subject: "#{message.subject}")
  end

end
