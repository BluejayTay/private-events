class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    
    if @event.save
      redirect_to @event, notice: "Event successfully created!"
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

private
    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:title, :date, :time, :location, :description)
    end
end
