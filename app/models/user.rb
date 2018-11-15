class User < ApplicationRecord
  validates :email, presence: true, uniqunessness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, format: { with: /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/}
end
