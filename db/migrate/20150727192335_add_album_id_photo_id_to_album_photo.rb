class AddAlbumIdPhotoIdToAlbumPhoto < ActiveRecord::Migration
  def change
    add_column :album_photos, :album_id, :integer
    add_column :album_photos, :photo_id, :integer
    add_column :album_photos, :order, :integer
  end
end
