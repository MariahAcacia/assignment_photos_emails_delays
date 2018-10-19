class UserMailer < ApplicationMailer

  default :from => "app112440190@heroku.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome!")
  end

end
