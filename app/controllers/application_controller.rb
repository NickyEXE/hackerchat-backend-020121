class ApplicationController < ActionController::API

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, ENV["JWT_SECRET"])
  end

  def get_auth_token
    request.headers["Authorization"]
  end

  def decode_token
    JWT.decode(get_auth_token, ENV["JWT_SECRET"])[0]
  end

  # if you call this "current_user", active model serializer might get weird.
  def session_user
    User.find(decode_token["user_id"])
  end


end
