class AttendeesController < ApplicationController
	respond_to :html, :js

  def edit
    if request.xhr?
      @attendee = Attendee.find_by(id: params[:id])
      @attendee.update(points: attendance_option(params[:type]))
      {points: @attendee.points}.to_json
    end
  end
end