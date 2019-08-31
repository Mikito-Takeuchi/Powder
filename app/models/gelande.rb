class Gelande < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  
  has_many :post
end
