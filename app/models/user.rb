class User < ApplicationRecord
    has_secure_password
  
    validates :username, presence: {message: "You do have a name, right?"}, uniqueness: true, length: { in: 4..20 }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { in: 8..16 }
    validates :password_confirmation, presence: true, on: :create



  end
  