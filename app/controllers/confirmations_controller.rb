class ConfirmationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @confirmation = Confirmation.new
  end

  def create
    #user_id = current_user.id 
    event = Event.find(params[:event_id])
    event_id = event.id
    @confirmation = Confirmation.new(attendee_id: current_user.id, attended_event_id: event_id)
    
    if @confirmation.save
      redirect_to root_path, notice: "Event successfully rsvp'd!"
    else
      redirect_to root_path, notice: "Error occurred while trying to RSVP"
    end
  end

  def delete
  end

end
