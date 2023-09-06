class EventsController < ApplicationController
    before_action :set_event, only: [:show]
  
    def new
        @event = Event.new
    end
    
    def index
      @events = Event.all
    end
  
    def show
      # This action displays details of a specific event.
    end
  
    def create
        @event = Event.new(event_params)
        
        if @event.save
          flash[:success] = "Event created successfully."
          redirect_to @event  # Redirect to the show page for the newly created event
        else
          render 'new'
        end
    end

    private
  
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
        params.require(:event).permit(:title, :date, :location, :description)
    end
  end
  