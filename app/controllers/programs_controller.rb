class ProgramsController < ApplicationController

	def index
		@event = Event.find(params[:id])
		@programs = @event.programs
	end

	def new
		@event = Event.find(params[:id])
	end


end
