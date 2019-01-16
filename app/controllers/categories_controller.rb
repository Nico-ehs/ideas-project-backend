class CategoriesController < ApplicationController

  def index
      render json: Category.all
  end

  def show
      render json: Category.find(params[:id])
  end

  def create
      render json: Category.find_or_create_by(Category_params)
  end

  def update
      Category.find(params[:id]).update(event_params)
      render json: Category.find(params[:id])
  end

  def destroy
      render json: Category.find(params[:id]).destroy
  end

  private
  def category_params
      params.require(:category).permit(:title, :description)
  end


end
