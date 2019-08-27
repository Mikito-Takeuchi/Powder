class Profile < ApplicationRecord
  validates :user_id, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 5 }
  validates :sex, presence: true
  validates :job, presence: true
  validates :address, presence: true
  validates :introduce, presence: true
  
  belongs_to :user
end
