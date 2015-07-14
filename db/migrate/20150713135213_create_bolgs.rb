class CreateBolgs < ActiveRecord::Migration
  def change
    create_table :bolgs do |t|

      t.timestamps
    end
  end
end
