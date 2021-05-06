class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
    add_index(:bookmarks, :user_id)
    add_index(:bookmarks, :post_id)
  end
end
