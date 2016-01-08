class AttendancesController < ApplicationController
	respond_to :html, :js

  def index
    @attendances = Choir.find_by(id: params[:choir_id]).attendances.sort_by{ |att| att.created_at}.reverse
  end



  def create
    @choir = Choir.find_by(user_id: current_user.id)
    @attendance = @choir.attendances.create() 
    @choir.choir_members.each do |member|
      Attendee.create( attendance_id: @attendance.id, choir_member_id: member.id)
    end
    redirect_to user_choir_attendance_path(params[:user_id], @choir.id, @attendance.id)
  end


  def show
    @choir = Choir.find_by(user_id: params[:user_id])
    @attendance = Attendance.find_by(id: params[:id])
    @members_attendees = @attendance.attendees
  end

end