class Nav < ActiveRecord::Base
  belongs_to :user
  has_many :portfolios
  has_many :albums
  has_one :setting
end
