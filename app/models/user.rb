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
end
