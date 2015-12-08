class Choir < ActiveRecord::Base
  belongs_to :user
  has_many :choir_members
end
