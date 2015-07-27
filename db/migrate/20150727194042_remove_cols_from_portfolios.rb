class RemoveColsFromPortfolios < ActiveRecord::Migration
  def change
    remove_column :portfolios, :album_id
    drop_table :albums_photos
  end
end
