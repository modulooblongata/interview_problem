class User < ActiveRecord::Base
	validates :first_name,  presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	#simple Ruby regex for email validation 
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 250 },
  						format: { with: EMAIL_REGEX }
  #basic regex verifies SSN is nine digets long and allows for dashes
  SSN_REGEX = /\A\d{3}-?\d{2}-?\d{4}\z/
  validates :social_security_number, presence: true, 
  						format: { with: SSN_REGEX }
end

#The user model must have a first_name, last_name, email, social_security_number
#Require all fields, validate that email is in the proper format, and that social_security_number is 9 digits long.