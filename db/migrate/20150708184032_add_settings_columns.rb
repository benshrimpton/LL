class AddSettingsColumns < ActiveRecord::Migration
  def change
    add_column :settings, :facebook_name,:text
    add_column :settings, :instagram_name,:text
    add_column :settings, :twitter_name,:text
    add_column :settings, :google_analytics,:text
  end
end
