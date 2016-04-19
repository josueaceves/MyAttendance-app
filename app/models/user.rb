class User < ActiveRecord::Base
  has_secure_password
  has_many :choirs

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :password, presence: true, :on => :create
end
