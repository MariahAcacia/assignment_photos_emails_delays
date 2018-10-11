class User < ApplicationRecord

  has_attached_file :profile_photo, styles: { small: "100x100" }

  validates_attachment_content_type :profile_photo,
                                    content_type: /\Aimage\/.*\Z/,
                                    size: { in: 0..1.megabytes }

  after_create :send_welcome_email


  private


  def send_welcome_email
    UserMailer.welcome(self).deliver! 
  end


end
