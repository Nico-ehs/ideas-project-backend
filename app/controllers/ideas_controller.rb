class IdeasController < ApplicationController


  def index
      render json: Idea.all
  end

  def show
      render json: Idea.find(params[:id])
  end

  def create
      render json: Idea.find_or_create_by(idea_params)
  end

  def update
      Idea.find(params[:id]).update(idea_params)

      print("\n #{Idea.find(params[:id])} \n #{params} \n #{idea_params} \n Test \n\n\n\n")
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
