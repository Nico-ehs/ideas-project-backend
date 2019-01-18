class UsersController < ApplicationController

  def profile
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]
    render json: { user: User.find(user_id) }, status: :accepted
  end

    # Sign Up

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def index
      render json: User.all
  end

  def show
      render json: User.find(params[:id])
  end


  def update
      User.find(params[:id]).update(user_params)
      render json: User.find(params[:id])
  end

  def destroy
      render json: User.find(params[:id]).destroy
  end

  private
  def user_params
      params.require(:user).permit(:name, :password)
  end
end
