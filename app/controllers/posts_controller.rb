class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy like]
  before_action :set_categories, except: %i[show destroy]
  before_action :authenticate_user!, only: %i[show edit update destroy like]

  def index
    set_posts_and_categories_with_criteria(params[:category], params[:order])
  end

  def search
    set_posts_and_categories_with_criteria(params[:category], params[:order])
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def like
    if current_user.voted_for? @post
      @post.unliked_by current_user
    else
      @post.liked_by current_user
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_categories
    @categories = Category.all
  end

  def post_params
    params.require(:post).permit(:title, :review, :rating, :image, category_ids: [])
  end

  def set_posts_and_categories_with_criteria(requested_category, requested_order)
    if requested_category.nil? || requested_category.eql?('All')
      posts_by_category = Post.all
      @category_name = 'All'
    else
      posts_by_category = filter_posts_by_category(requested_category)
      @category_name = requested_category
    end
    @order = requested_order
    order_posts(requested_order, posts_by_category)
  end

  def filter_posts_by_category(category_name)
    @category = Category.find_by(name: category_name)
    if @category.nil?
      Post.none
    else
      @category.posts
    end
  end

  def order_posts(_order, _posts)
    @posts = case _order
            when 'A-Z'
              _posts.order('title ASC')
            when 'Z-A'
              _posts.order('title DESC')
            when 'Higest Rating First'
              _posts.order('rating DESC')
            when 'Lowest Rating First'
              _posts.order('rating ASC')
            when 'Newest First'
              _posts.order('created_at DESC')
            when 'Oldest First'
              _posts.order('created_at ASC')
            else
              _posts.order('title ASC')
    end
  end
end
