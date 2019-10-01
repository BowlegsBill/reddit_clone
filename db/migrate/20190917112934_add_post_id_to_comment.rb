class AddPostIdToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :post, index: true
  end
end
