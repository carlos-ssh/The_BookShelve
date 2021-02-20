class Post < ApplicationRecord
  has_and_belongs_to_many :categories
  has_one_attached :image
  has_rich_text :review

  validates :title, presence: true, length: { minimum: 2 }
  validates :review, presence: true, length: { in: 5..2000 }
  validates :image, presence: true
  validates :rating, numericality: { only_integer: true }

  acts_as_votable
end
