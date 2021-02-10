# frozen_string_literal: true

class Post < ApplicationRecord
  has_and_belongs_to_many :categories
  has_one_attached :image
  has_rich_text :review
  
  validates :title, :review, :image, presence: true
  acts_as_votable 


end