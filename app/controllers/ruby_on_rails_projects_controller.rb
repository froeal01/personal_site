class RubyOnRailsProjectsController < ApplicationController

	def index
		@projects = RubyOnRailsProject.all
	end

	def show
		@project = RubyOnRailsProject.find(params[:id])
	end
	
end