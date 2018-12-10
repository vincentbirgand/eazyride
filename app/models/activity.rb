class Activity < ApplicationRecord
  has_many :journeys, dependent: :destroy
  CATEGORY = ["Sport de neige", "Sport d'eau", "Sport de montagne", "Plongée", "Running", "Vélo", "Golf", "Randonnée"].freeze
  validates :category, inclusion: {
      in: CATEGORY,

    }

  NAME = ["Apnée", "Ski", "Surf", "Snowboard", "Kite-Surf", "Escalade", "Parapente", "VTT", "Vélo", "Plongée", "Running", "Bodyboard", "Planche à voile", "Golf", "Paddle", "Parachutisme", "Randonnée"].freeze
  validates :name, inclusion: {
      in: NAME,
    }
end


