class Message < ApplicationRecord
  belongs_to :drivees
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  has_many :drivees
end
