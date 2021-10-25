class SessionsController < ApplicationController
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
    else
      render json: {errors: "Username or password is invalid"}, status: :forbidden
    end
  end

  def autologin
    render json: {user: UserSerializer.new(session_user), token: encode_token(session_user.id)}
  end
end
