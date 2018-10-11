class User < ApplicationRecord

  has_attached_file :profile_photo, styles: { small: "100x100" }

  validates_attachment_content_type :profile_photo,
                                    content_type: /\Aimage\/.*\Z/,
                                    size: { in: 0..1.megabytes }



  def self.send_welcome_email(id)
    user = User.find(id)
    UserMailer.welcome(user).deliver!
  end
  

end
