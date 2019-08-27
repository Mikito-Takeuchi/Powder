class Gelande < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  
  belongs_to :post
end
