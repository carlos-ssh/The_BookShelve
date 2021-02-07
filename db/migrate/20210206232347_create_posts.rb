class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :review
      t.decimal :rating, precision: 2, scale: 1

      t.timestamps
    end
  end
end
