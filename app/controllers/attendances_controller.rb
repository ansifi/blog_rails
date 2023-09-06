class AttendancesController < ApplicationController
    before_action :set_event
  
    def create
      @attendance = @event.attendances.build(attendee: current_user)
      if @attendance.save
        flash[:success] = "RSVP successful!"
      else
        flash[:error] = "RSVP failed."
      end
      redirect_to events_path
    end
  
    def destroy
      @attendance = Attendance.find(params[:id])
      @attendance.destroy
      flash[:success] = "RSVP canceled."
      redirect_to events_path
    end
  
    private
  
    def set_event
      @event = Event.find(params[:event_id])
    end
  end
  