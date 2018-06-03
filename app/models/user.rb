class User < ApplicationRecord
#registers an inline callback direcctly after the before_save callback
#{} is the code that will run when the callback executes
  before_save { self.email = email.downcase if email.present? }

#this ensures that name is present
  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
#first validation executes if password_digest is nil
#secord ensures that when updating a password it meets requirements.
  #allow_blank:true allows us to change other attributes with having to change password.
 validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
 validates :password, length: { minimum: 6 }, allow_blank: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

#Adds methods to set and authenticate against a BCrypt password. This requires you to
#to have a password_digest attribute.
  has_secure_password
end