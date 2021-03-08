# frozen_string_literal: true

class ActsAsVotableMigration < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
    add_index(:votes, :user_id)
    add_index(:votes, :post_id)
  end
end
