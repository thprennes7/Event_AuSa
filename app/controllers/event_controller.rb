class EventController < ApplicationController

  def index
  end

  def new
  end

  def show
  end

  def create
    @event = Event.new(start_date: params[:start_date], description: params[:description], title: params[:title], price: [:price], location: [:location])
    if @event.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
