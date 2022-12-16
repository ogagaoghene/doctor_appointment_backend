class Api::V1::RegistrationsController < ApplicationController
  def create
    user = User.new(user_params)

    if user
      # session[:user_id] = user.id
      render json: {
        status: created,
        user:
      }
    else
      render json: {
        status: 500
      }
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
