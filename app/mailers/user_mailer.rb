class UserMailer < ApplicationMailer

  default :from => "host@website.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome!")
  end

end
