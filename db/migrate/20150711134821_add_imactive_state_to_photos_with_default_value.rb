class AddImactiveStateToPhotosWithDefaultValue < ActiveRecord::Migration
  def change
    add_column :photos, :inactive, :boolean, null: false, default: false
  end
end
