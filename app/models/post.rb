class Post < ApplicationRecord
  has_and_belongs_to_many :categories
  has_one_attached :image

  validates :title, presence: true, length: { minimum: 2 }
  validates :review, presence: true, length: { in: 5..2000 }
  validates :image, presence: true
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 10 }

  acts_as_votable

  belongs_to :user
end
