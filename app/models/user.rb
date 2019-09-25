class User < ApplicationRecord
  validates :name, presence: true, length:{maximum:15}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,format: {with: VALID_EMAIL_REGEX}
  
  VALID_PASWAD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
  validates :password,presence: true,format: {with: VALID_PASWAD_REGEX}
  
  has_secure_password
  
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  
  has_many :posts
  
  has_many :participants

end
