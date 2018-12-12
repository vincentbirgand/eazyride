class Journey < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_many :reviews
  has_many :messages
  has_many :drivees
  has_many :users, through: :drivees #todo rename
  # has_many :messages

  #checkboxes
  has_many :journey_categories
  has_many :categories, through: :journey_categories


  validates :car_type, presence: { message: " - Veuillez indiquer le type de véhicule" }
  validates :seat_available, presence: { message: " - Veuillez indiquer le nombre de places disponibles" }
  validates :description, presence: { message: " - Veuillez décrire votre trip" }
  validates :start_time, presence: { message: " - Veuillez indiquer une date de départ" }
  validates :end_time, presence: { message: " - Veuillez indiquer une date d'arrivée " }
  validates :source_city, presence: { message: " - Veuillez indiquer le lieu de départ" }
  validates :destination_city, presence: { message: " - Veuillez indiquer le lieu d'arrivée" }
  validates :activity_id, presence: { message: " - Veuillez indiquer une activité" }
  validates :price, presence: { message: " - Veuillez indiquer le prix par Eazyrider" }

  def formated_time
    start_time.strftime("%b %d, %Y - %H h %M") if start_time
  end

  def formated_end_time
    end_time.strftime("%b %d, %Y - %H h %M") if end_time
  end
end
