class Api::V1::RegistrationsController < ApplicationController
  def create
    user = User.create!(user_params)
    if user
      session[:name] = user.name
      render json: { status: :created }
    else
      render json: { status: 500 }
    end
  end

  private

  def user_params
    params.require(:registration).permit(:name, :email, :password, :password_confirmation)
  end

end


