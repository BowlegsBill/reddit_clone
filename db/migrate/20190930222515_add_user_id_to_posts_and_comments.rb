class AddUserIdToPostsAndComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :user
    add_reference :comments, :user
  end
end
