class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  helper_method :current_user, :logged_in?

  def after_sign_in_path_for(resource)
    api_user_path(resource)
  end

  def login!(user)
    session[:session_token] = user.reset_session_token! 
    @current_user = user
  end

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_user 
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
    @current_user = nil
  end

  def require_logged_in!
    redirect_to new_session_url unless logged_in?
  end
end
