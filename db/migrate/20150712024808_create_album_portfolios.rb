class CreateAlbumPortfolios < ActiveRecord::Migration
  def change
    create_table :album_portfolios do |t|
      t.integer :album_id
      t.integer :portfolio_id
      t.integer :position

      t.timestamps
    end
  end
end
