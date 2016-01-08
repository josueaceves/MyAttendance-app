class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user, :logged_in?, :find_choir_member, :member_marked_points

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

  def member_marked_points(points)
    points_hash = {0 => "<i class='fa fa-times fa-lg'></i>", 2 => "<i class='fa fa-clock-o fa-lg'></i>", 3 => "<i class='fa fa-check fa-lg'></i></a>"}
    points_hash[points.to_i]
  end
end
