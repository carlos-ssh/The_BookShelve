class VotesController < ApplicationController
  def new
    @vote = current_user.votes.build(post_id: params[:post_id])
  end

  def create
    @vote = current_user.votes.build(post_id: params[:post_id])

    respond_to do |format|
      if @vote.save
        format.html { redirect_to category_path(params[:category_id]), notice: 'Vote was successfully created.' }
      else
        format.html { redirect_to category_path(params[:category_id]) }
      end
    end
  end

  def destroy
    @vote = current_user.votes.find_by(post_id: params[:post_id])
    respond_to do |format|
      if @vote.destroy
        format.html { redirect_to category_path(params[:category_id]), notice: 'Vote was successfully destroyed.' }
      else
        format.html { redirect_to category_path(params[:category_id]) }
      end
    end
  end
end
