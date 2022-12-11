class Api::V1::SessionsController < ApplicationController
  def create 
    user = User
            .find_by(name: params["user"]["name"])
            .try(:authenticate, params["user"]["name"])

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else 
      render json: { status: 401 }
    end 
  end 
end
