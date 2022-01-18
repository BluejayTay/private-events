class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: :creator_id 
  has_many :attendees, through: :confirmations
  has_many :confirmations, foreign_key: :attended_event_id

  validates :title, :date, :time, :location, presence: true
end
