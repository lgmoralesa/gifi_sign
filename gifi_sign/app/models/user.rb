class User < ApplicationRecord
	before_save { self.email = email.downcase }  #USER@unal.co sea igual a user@unal.co
	validates :name, presence: true, length: { maximum: 50 } 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i  #correcta sintaxis permitida en correos
	validates :email, presence: true, length: { maximum: 255 },
					format: { with: VALID_EMAIL_REGEX },
					uniqueness: { case_sensitive: false } 
	has_secure_password
	validates :password, length: { minimum: 6 } 
end
