class Api::V1::RegistrationsController < ApplicationController
  def create
    user = User.create(user_params)
    if user.save
      render json: { status: 'created', message: 'Saved Patient', data: user }
    else
      render json: { status: 500, message: 'Patient not saved', errors: user.errors }
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end


