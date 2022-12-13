class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(name: session_params[:name])
    
    if @user&.authenticate(session_params[:password])
      login!
      render json: { status: 'created', logged_in: true, data: @user }, status: 201
    else
      render json: { status: 401 }, status: 401
    end
  end

  def logged_in?
    if @current_user
      render json: { logged_in: true, user: current_user }, status: 201
    else
      render json: { logged_in: false, message: 'no such user' }, status: 401
    end
  end

  def destroy
    logout!
    render json: { status: 200, logged_out: true }
  end

  private

  def session_params
    params.require(:session).permit(:name, :password)
  end
end


