class AddDownvotesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :downvotes, :integer
  end
end
