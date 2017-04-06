class ProgramsController < ApplicationController

	def index
		event = Event.find(params[:id])
		@event = event.event
		@programs = event.programs
	end


end
