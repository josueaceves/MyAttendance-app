class AttendancesController < ApplicationController
	respond_to :html, :js


	def create
    if request.xhr?
      @attendance =  Choir.find_by(id: params[:choir_id]).attendances.create(prayer: params[:prayer])
      p session[:attendance_id] = @atendace.id
      @choir = Choir.find_by(user_id: current_user.id)
      @choir_members = @choir.choir_members.sort_by{ |user| user.first_name}
      render 'list', layout: false
    else
      puts " no ajax *******************"
      puts " no ajax *******************"
      
      @attendance =  Choir.find_by(id: params[:choir_id]).attendances.create(prayer: params[:prayer])
      puts " no ajax *******************"
      p session[:attendance_id] = @attendance.id
      @choir = Choir.find_by(user_id: current_user.id)
      @choir_members = @choir.choir_members.sort_by{ |user| user.first_name}
    end
	end

end