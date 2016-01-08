class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user, :logged_in?, :find_choir_member

  protect_from_forgery with: :exception
  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    session[:user_id] != nil
  end

  def find_choir_member(id)
    ChoirMember.find_by(id: id)
  end
end
