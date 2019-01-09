class IdeasController < ApplicationController


  def index
      render json: Idea.all
  end

  def show
      render json: Idea.find(params[:id])
  end

  def create
      render json: Idea.find_or_create_by(Idea_params)
  end

  def update
      Idea.find(params[:id]).update(event_params)
      render json: Idea.find(params[:id])
  end

  def destroy
      render json: Idea.find(params[:id]).destroy
  end

  private
  def idea_params
      params.require(:idea).permit(:title, :description, :user_id, :category_id)
  end


end
