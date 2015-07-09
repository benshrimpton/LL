class DropPagesColumns < ActiveRecord::Migration
  def change
    remove_column :pages, :facebook_name
    remove_column :pages, :instagram_name
    remove_column :pages, :twitter_name
    remove_column :pages, :google_analytics
  end
end
