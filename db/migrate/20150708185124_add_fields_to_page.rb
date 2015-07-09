class AddFieldsToPage < ActiveRecord::Migration
  def change
    add_column :pages, :title,:text
    add_column :pages, :text_content,:text
  end
end
