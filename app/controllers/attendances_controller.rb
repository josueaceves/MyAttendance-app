class AttendancesController < ApplicationController

	def new
		
	end

	def list
		@choir_members = ChoirMember.all.sort_by{ |user| user.first_name}
	end
end