class RubyProjectsController < ApplicationController

	def index
		@projects = RubyProject.all
	end 

	def show
		@project = RubyProject.find(params[:id])
	end
end