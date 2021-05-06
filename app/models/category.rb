class Category < ApplicationRecord
  has_and_belongs_to_many :posts, class_name: 'Post'
  validates :name, presence: true
  validates :priority, presence: true
end
