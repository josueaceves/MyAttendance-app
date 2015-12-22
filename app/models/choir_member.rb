class ChoirMember < ActiveRecord::Base
  belongs_to :choir
  has_many :attendances
end
