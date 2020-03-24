class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  helper_method :current_user
  helper_method :log_in?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in?
    !current_user.nil?
  end
end
