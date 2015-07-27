class AddAlbumsPhotos < ActiveRecord::Migration
  def change
    create_table :albums_photos, id: false do |t|
      t.belongs_to :albums, index: true
      t.belongs_to :photos, index: true
    end
  end
end
