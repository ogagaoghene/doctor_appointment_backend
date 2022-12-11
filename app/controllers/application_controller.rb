class ApplicationController < ActionController::API
include ActionController::Cookies 

  private 
  def curent_user
    User.find_by_id(session[:user_id])
  end
end
