class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_user
    if session[:user_id] == nil
      @user = nil
      redirect_to '/'
    else
      @user = User.find(session[:user_id])
    end
  end
end
