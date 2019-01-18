class AuthController < ApplicationController

  def create
    @user = User.find_by(name: params[:name])
    puts @user
    if @user && @user.authenticate(params[:password])
      render json: {
        message: "correct username and password",
        user_info: @user,
        error: false,
        token: encode({user_id: @user.id})
      }, status: :accepted
    else
      render json: {
        message: "wrong password",
        error: true
      }, status: :unauthorized
    end
  end

  def check
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]
    @user=User.find(user_id)
    render json: { user: UserSerializer.new(@user) }, status: :accepted
  end


end
