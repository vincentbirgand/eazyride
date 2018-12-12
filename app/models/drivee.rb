class Drivee < ApplicationRecord
  belongs_to :journey
  belongs_to :user
  has_many :messages

  STATUT = ["En attente", "Validé", "Passé", "Refusé"].freeze
  validates :status, inclusion: {
    in: STATUT,
  }
end
