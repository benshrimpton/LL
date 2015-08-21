class RenameArticleCategories < ActiveRecord::Migration
  def change
    rename_table :album_photos, :albums_photos
  end
end
