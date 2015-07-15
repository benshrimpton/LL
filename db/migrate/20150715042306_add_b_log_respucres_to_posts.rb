class AddBLogRespucresToPosts < ActiveRecord::Migration
  def change
    add_reference :blogs, :post, index: true
  end
end
