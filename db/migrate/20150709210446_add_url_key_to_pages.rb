class AddUrlKeyToPages < ActiveRecord::Migration
  def change
    add_column :pages, :url_key, :text
    add_column :portfolios, :url_key, :text_area
    add_column :albums, :url_key, :text_area
  end
end
