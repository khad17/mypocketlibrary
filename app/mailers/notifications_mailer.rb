class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@mypocketlibrary.com"
  default :to => "noreply@mypocketlibrary.com"

  def new_message(message)
    @message = message
    mail(:subject => "[MPL demande de contact] #{message.subject}")
  end

end
