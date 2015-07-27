class RemovePagesIdFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :pages_id
  end
end
