class EventsController < ApplicationController
  before_action :find_event, only: [ :show, :edit, :update, :destroy ]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save

    redirect_to events_path(@event)
  end

  def edit
  end

  def update
    @event.update(event_params)

    redirect_to events_path(@event)
  end

  def destroy
    @event.destroy

    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :datetime, :address, :photo)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
