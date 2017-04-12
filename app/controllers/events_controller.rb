class EventsController < ApplicationController


	def index
		@events = Event.all.order("created_at DESC")
	end

	def new
	end

	def create
		Event.create(year: event_params[:year], month: event_params[:month], date: event_params[:date], event: event_params[:event], place: event_params[:place], name: event_params[:name])
	end


	private
  	def event_params
    params.permit(:year, :month, :date, :event, :place, :name)
  	end

end
