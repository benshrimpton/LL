class RemoveBolgs < ActiveRecord::Migration
  def change
    drop_table :bolgs
  end
end
