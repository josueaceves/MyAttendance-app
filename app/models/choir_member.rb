class ChoirMember < ActiveRecord::Base
  belongs_to :choir
  # has_many :attendances
  has_many :attendees, through: :attendances
end
