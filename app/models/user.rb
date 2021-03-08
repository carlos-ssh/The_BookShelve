class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_voter
  has_many :posts
  has_many :categories

  def username
    email.split('@')[0].capitalize
  end

  def show
    @posts = @user.posts.ordered_by_most_recent
  end
end
