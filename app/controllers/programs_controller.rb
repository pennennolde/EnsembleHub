class ProgramsController < ApplicationController

	def index
		@event = Event.find(params[:id])
		@programs = @event.programs
	end

	def new
		@event = Event.find(params[:id])
	end

	def create
		Program.create(group: program_params[:group], composer: program_params[:composer], arranger: program_params[:arranger], music: program_params[:music], attention: program_params[:attention], comment: program_params[:comment], event_id: program_params[:id])
		@event_id = program_params[:id]
	end

	def show
		@program = Program.find(params[:id])
		@event = @program.event
	end


	private
	def program_params
   		params.permit(:group, :composer, :arranger, :music, :attention, :comment, :id)
  	end

end
