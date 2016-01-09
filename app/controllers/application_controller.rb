class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user, :logged_in?, :find_choir_member, :member_marked_points, :attendance_option

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
    points_hash = {0 => "<i class='fa fa-times fa-lg' style='float: right; margin-right:1em;'></i>", 
                   2 => "<i class='fa fa-clock-o fa-lg' style='float: right; margin-right:1em;'></i>",
                   3 => "<i class='fa fa-check fa-lg' style='float: right; margin-right:1em;'></i></a>"}
    points_hash[points.to_i]
  end

  def attendance_option(option)
    option_hash = {"att-option-div-absent" => 0, "att-option-div-late"=> 2, "att-option-div" => 3 }
    option_hash[option]
  end
end
