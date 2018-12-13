class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  has_many :drivees_as_user, through: :journeys, source: :drivees

  has_many :reviews, foreign_key: :reviewee_id

  has_many :messages


  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end


  def self.others_from_the_trip(journey, current_user)
    all_riders = []
    journey.users.each{|u| all_riders << u } #drivees
    all_riders << journey.user #driver
    all_riders_without_current_user = all_riders.reject{ |u| u.id == current_user.id }
    journeys_reviews = Review.where(journey: journey)
    # en extraire tous les users impliqués
    journeys_reviews_users = journeys_reviews.map{ |r| r.reviewee }
    all_riders_without_current_user_no_reviews = all_riders_without_current_user.reject{ |u| journeys_reviews_users.include?(journeys_reviews_users) }
  end

  def average_rating
    if self.reviews.present?
      (self.reviews.map(&:rating).sum.to_f / self.reviews.length).round(1)
    else
      "test"
    end
  end

  def amount_rating
    self.reviews.count
  end

  def green_stars
    average_rating.to_i
  end

  def black_stars
    stars = green_stars
    black_stars = 5 - stars
  end
end
