class AddAlbumToPortfolio < ActiveRecord::Migration
  def change
    add_reference :albums, :portfolio, index: true
  end
end
