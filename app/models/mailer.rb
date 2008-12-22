class Mailer < ActionMailer::Base
  
  def forgot_password(stream)
    recipients(stream.email)
    from("no-reply@kakuteru.com")
    subject("Your #{stream.blog_url} password")
    body(:stream => stream)
  end

end