class AttendeesController < ApplicationController
	respond_to :html, :js

	def create
		if request.xhr?
			puts "request was accepted**************************"
			puts "request was accepted**************************"
			puts "request was accepted**************************"
			puts "request was accepted**************************"
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