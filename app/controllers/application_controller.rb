class ApplicationController < ActionController::API
  include ActionController::Helpers
  skip_before_action :verify_authenticity_token, raise: false
  helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!
  
  def login!
    session[:name] = @user.name
    puts session[:name]
  end

  def logged_in?
    !!session[:name]
  end

  def current_user
    @current_user ||= User.find(session[:name]) if session[:name]
  end

  def authorized_user?
    @user == current_user
  end

  def logout!
    session.clear
  end

end
