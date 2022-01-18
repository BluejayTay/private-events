class Event < ApplicationRecord
  belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"
  
  validates :title, :date, :time, :location, presence: true
end
