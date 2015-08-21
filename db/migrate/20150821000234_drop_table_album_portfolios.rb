class DropTableAlbumPortfolios < ActiveRecord::Migration
  def change
    drop_table :album_portfolios
  end
end
