class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@mypocketlibrary.com"
  default :to => "a.khadoudja@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[MPL demande de contact] #{message.subject}")
  end

end
