class AttendancesController < ApplicationController
	respond_to :html, :js
	def new
		
	end

	def list
		@choir = Choir.find_by(user_id: current_user.id)
		@choir_members = @choir.choir_members.sort_by{ |user| user.first_name}
	end

	def create
		if request.xhr?
      if params.first.first == "att-option-div-absent"
      	puts params[:choir_member_id]
      	@choir_member = ChoirMember.find_by(id: params[:choir_member_id])
      	@choir_member.attendances.create(user_id:  params[:user_id], choir_id: params[:choir_id], points: 0 )
      elsif params.first.first == "att-option-div-late"
      	@choir_member = ChoirMember.find_by(id: params[:choir_member_id])
      	@choir_member.attendances.create(user_id:  params[:user_id], choir_id: params[:choir_id], points: 1 )
      elsif params.first.first == "att-option-div"
      	@choir_member = ChoirMember.find_by(id: params[:choir_member_id])
      	@choir_member.attendances.create(user_id:  params[:user_id], choir_id: params[:choir_id], points: 3 )
      end
    end
	end
end