class CommentsController < ApplicationController

  def index
      render json: Comment.all
  end

  def show
      render json: Comment.find(params[:id])
  end

  def create
      render json: Comment.find_or_create_by(comment_params)
  end

  def update
      Comment.find(params[:id]).update(comment_params)
      render json: Comment.find(params[:id])
  end

  def destroy
      render json: Comment.find(params[:id]).destroy
  end

  private
  def comment_params
      params.require(:comment).permit(:text, :user_id, :idea_id)
  end
end
