class Choir < ActiveRecord::Base
  belongs_to :user
  has_many :choir_members
  # has_many :attendees, through: :attendances
  has_many :attendances
end
