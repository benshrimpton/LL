class AddPortfoliosToPhoto < ActiveRecord::Migration
  def change
    add_reference :photos, :portfolios, index: true
  end
end
