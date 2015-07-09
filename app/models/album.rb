class Album < ActiveRecord::Base
  belongs_to :user
  belongs_to :portfolio
  has_many :photos
end
