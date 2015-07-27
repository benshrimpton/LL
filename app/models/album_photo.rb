class AlbumPhoto < ActiveRecord::Base
  belongs_to :album
  belongs_to :photos
end
