class DropPortfolioIdFromAlbusmTable < ActiveRecord::Migration
  def change
    remove_column :albums, :portfolio_id
  end
end
