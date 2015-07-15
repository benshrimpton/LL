class AddResourcesToPosts < ActiveRecord::Migration
  def change
    add_reference :blogs, :posts, index: true
  end
end
