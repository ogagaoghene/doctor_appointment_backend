class ApplicationController < ActionController::API
  include ActionController::Cookies 
    include ActionController::Helpers
    skip_before_action :verify_authenticity_token, raise: false
    helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!
    def login!
      session[:name] = @user.name
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
  
    private 
    def curent_user
      User.find_by_id(session[:user_id])
    def logout!
      session.clear
    end
  
  end