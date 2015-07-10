class AddUserToNavs < ActiveRecord::Migration
  def change
    add_reference :navs, :user, index: true
  end
end
