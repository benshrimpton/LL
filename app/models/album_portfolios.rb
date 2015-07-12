class AlbumPortfolios < ActiveRecord::Base
  belongs_to :album
  belongs_to :portfolio
  belongs_to :user
end
