class Attendance < ActiveRecord::Base
  belongs_to :user
  belongs_to :choir_member
end
