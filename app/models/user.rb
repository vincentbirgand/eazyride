class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  has_many :drivees_as_user, through: :journeys, source: :drivees

  has_many :reviews, foreign_key: :reviewee_id

  has_many :sent_messages, foreign_key: :sender_id, class_name: "Message"
  has_many :received_messages, foreign_key: :receiver_id, class_name: "Message"

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end


  def self.others_from_the_trip(journey, current_user)
    all_riders = journey.users #drivees
    all_riders << journey.user #driver
    all_riders_without_current_user = all_riders.reject{ |u| u.id != current_user.id }
    # tous les reviews existant pour ce trip
    journeys_reviews = Review.where(journey: journey)
    # en extraire tous les users impliqués
    journeys_reviews_users = journeys_reviews.map{ |r| r.reviewee }
    all_riders_without_current_user_no_reviews = all_riders_without_current_user.reject{ |u| journeys_reviews_users.include?(journeys_reviews_users) }
  end
end
