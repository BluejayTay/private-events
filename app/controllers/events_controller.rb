class EventsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @event = Event.all
  end
end
