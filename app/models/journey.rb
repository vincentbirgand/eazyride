class Journey < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_many :reviews
  has_many :drivees
  has_many :users, through: :drivees #todo rename
  # has_many :messages

  #checkboxes
  has_many :journey_categories
  has_many :categories, through: :journey_categories


  def formated_time
    start_time.strftime("%b %d, %Y - %H h %M") if start_time
  end

  def formated_end_time
    end_time.strftime("%b %d, %Y - %H h %M") if end_time
  end
end
