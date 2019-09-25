class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :gelande_id, presence: true
  validates :date, presence: true
  validates :title, presence: true
  validates :text, presence: true
  validates :how, presence: true
  
  belongs_to :user
  belongs_to :gelande
  
  has_many :participants
  has_many :participant_users, through: :participants, source: 'user'
end
