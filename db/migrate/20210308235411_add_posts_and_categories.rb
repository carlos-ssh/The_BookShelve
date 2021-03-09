class AddPostsAndCategories < ActiveRecord::Migration[6.1]
  def change
    create_join_table :posts, :categories
  end
end