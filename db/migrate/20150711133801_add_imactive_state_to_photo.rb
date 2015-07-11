class AddImactiveStateToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :inactive, :boolean
  end
end
