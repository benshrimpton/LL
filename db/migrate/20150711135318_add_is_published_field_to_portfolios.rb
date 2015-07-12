class AddIsPublishedFieldToPortfolios < ActiveRecord::Migration
  def change
    add_column :albums, :inactive, :boolean, null: false, default: false
  end
end
