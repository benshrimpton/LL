class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :facebook_name
      t.string :instagram_name
      t.string :twitter_name
      t.string :google_analytics

      t.timestamps
    end
  end
end
