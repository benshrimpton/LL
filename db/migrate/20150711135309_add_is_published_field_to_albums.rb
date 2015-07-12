class AddIsPublishedFieldToAlbums < ActiveRecord::Migration
  def change
    add_column :portfolios, :inactive, :boolean, null: false, default: false
  end
end
