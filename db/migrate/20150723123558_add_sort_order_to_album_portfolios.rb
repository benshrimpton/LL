class AddSortOrderToAlbumPortfolios < ActiveRecord::Migration
  def change
    add_column :album_portfolios, :sort_order, :integer
  end
end
