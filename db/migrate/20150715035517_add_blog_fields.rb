class AddBlogFields < ActiveRecord::Migration
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :text, :text
  end
end
