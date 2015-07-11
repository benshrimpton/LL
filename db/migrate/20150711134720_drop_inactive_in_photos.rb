class DropInactiveInPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :inactive
  end
end
