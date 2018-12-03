class Review < ApplicationRecord
  belongs_to :journey
  belongs_to :reviewee
end
