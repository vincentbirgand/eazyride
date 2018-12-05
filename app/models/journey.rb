class Journey < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_many :reviews
  has_many :drivees
  has_many :users, through: :drivees #todo rename
  # has_many :messages
end
