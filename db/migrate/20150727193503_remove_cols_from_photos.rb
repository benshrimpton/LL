class RemoveColsFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :album_id
    remove_column :photos, :portfolios_id
    remove_column :photos, :pagess_id
  end
end
