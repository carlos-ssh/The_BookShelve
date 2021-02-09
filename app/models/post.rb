# frozen_string_literal: true

class Post < ApplicationRecord
  has_and_belongs_to_many :categories
  has_one_attached :image
  validates :image, content_type: [:png, :jpg, :jpeg]
  validates :title, :review, :image, presence: true
  acts_as_votable 

  def resized_image
    image.variant(resize: "240x135!")
  end
end