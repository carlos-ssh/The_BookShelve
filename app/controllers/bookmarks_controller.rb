class BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.bookmarks.includes(:post)
  end

  def create
    @bookmark = current_user.bookmarks.build(post_id: params[:post_id])
    respond_to do |format|
      if @bookmark.save
        format.html do
          redirect_to category_path(params[:category_id]),
                      notice: 'Bookmark was successfully saved.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @bookmark = current_user.bookmarks.find_by(post_id: params[:post_id])
    @bookmark.destroy
    respond_to do |format|
      format.html { redirect_to category_path(params[:category_id]), notice: 'Bookmark was successfully removed from your list.' }
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:user_id, :post_id)
  end
end