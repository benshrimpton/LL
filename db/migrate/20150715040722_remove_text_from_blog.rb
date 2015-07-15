class RemoveTextFromBlog < ActiveRecord::Migration
  def change
    remove_column :blogs, :text
  end
end
