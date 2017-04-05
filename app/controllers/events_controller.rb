class EventsController < ApplicationController


	def index
	end

	def new
	end

	def create
		Event.create(year: event_params[:year], month: event_params[:month], date: event_params[:date], event: event_params[:event], name: event_params[:name])
	end


	private
  def event_params
    params.permit(:year, :month, :date, :event, :name)
  end

end
