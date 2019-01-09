class CategoriesController < ApplicationController

  def index
      render json: Catagory.all
  end

  def show
      render json: Catagory.find(params[:id])
  end

  def create
      render json: Catagory.find_or_create_by(Catagory_params)
  end

  def update
      Catagory.find(params[:id]).update(event_params)
      render json: Catagory.find(params[:id])
  end

  def destroy
      render json: Catagory.find(params[:id]).destroy
  end

  private
  def catagory_params
      params.require(:catagory).permit(:title, :description)
  end


end
