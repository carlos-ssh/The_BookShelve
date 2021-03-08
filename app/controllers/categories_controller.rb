class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @categories = Category.all.order(priority: :desc).include(:posts)
    id = Post.all.joins(:votes).group(:id).count.max_by { |_k, v| v }
    @most_voted = if id.nil?
                    nil
                  else
                    Post.find(id[0])
                  end
  end

  def show
    @posts = Category.find(params[:id]).posts.includes(:votes).order(created_at: :desc).joins(:image_attachment)
  end

  def new
    @category = Category.new
  end

  def edit; end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'Category was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to categories_path, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :feature_in_navbar)
  end
end
