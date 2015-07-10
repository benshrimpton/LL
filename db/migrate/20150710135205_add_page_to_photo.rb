class AddPageToPhoto < ActiveRecord::Migration
  def change
    add_reference :photos, :pages, index: true
  end
end
