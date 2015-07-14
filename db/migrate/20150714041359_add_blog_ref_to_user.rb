class AddBlogRefToUser < ActiveRecord::Migration
  def change
    add_reference :users, :blogs, index: true
  end
end
