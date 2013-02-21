class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password

  before_save { |user| user.email.downcase! }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.+]+@[\w+\-.]+\.[a-z]+\z/i
  validates :name, length: { maximum: 50 }, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
                uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64 
  end
end
