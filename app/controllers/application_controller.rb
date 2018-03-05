class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def require_logged_in
   redirect_to '/'  unless current_user
  end

  def current_user
   session[:user_id]
  end

end
