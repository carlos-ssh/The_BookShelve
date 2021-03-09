class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def new
    @categories = Category.all
    @post = Post.new
  end

  def edit; end

  def show; end

  def create
    @categories = Category.all
    @post = current_user.posts.new(post_params)
    unless @post.image.attached?
      @post.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default.jpg')),
                            filename: 'default.jpg',
                            content_type: 'image/jpg')
    end
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to post_url, notice: 'Post was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :text, :image, categories_list: [])
  end
end
