class Attendance < ActiveRecord::Base
  belongs_to :choir_members
  has_many :attendees
end
