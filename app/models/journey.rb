class Journey < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_many :reviews
  has_many :drivees
  # has_many :messages
end
