class Post < ApplicationRecord
  has_and_belongs_to_many :categories
  has_one_attached :image
  #acts_as_votable 
  #validates :title, :review, :image, presence: true

  def resized_image
    image.variant(resize: "240x135!")
  end
end
