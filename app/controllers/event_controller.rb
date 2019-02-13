class EventController < ApplicationController

  def index
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(start_date: params[:start_date], description: params[:description], title: params[:title], price: [:price], location: [:location])
    puts "$"*60
    puts params
    puts "$" * 60
    if @event.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
