class AddPostsRespucresToBlog < ActiveRecord::Migration
  def change
    add_reference :posts, :blog, index: true
  end
end
