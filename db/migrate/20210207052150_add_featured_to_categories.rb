# frozen_string_literal: true

class AddFeaturedToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :feature_in_navbar, :boolean
  end
end
