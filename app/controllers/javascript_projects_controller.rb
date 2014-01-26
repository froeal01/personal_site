class JavascriptProjectsController < ApplicationController

	def index
		@projects = JavascriptProject.all
	end

	def show
		@project = JavascriptProject.find(params[:id])
	end
end
