class Api::V1::RegistrationsController < ApplicationController
  def create
    user = User.new(user_params)

    if user
      # session[:user_id] = user.id
      render json: {
        status: created,
        user: user
      }
    else
      render json: { 
        user.error.full_messages,
        status: 500 
      }
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
