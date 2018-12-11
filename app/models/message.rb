class Message < ApplicationRecord
  belongs_to :journey
  belongs_to :user
end
