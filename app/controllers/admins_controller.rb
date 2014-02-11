class AdminsController < ApplicationController
	include ApplicationHelper
	before_filter :require_login

	def index
		@admin = current_user
		@ror = RubyOnRailsProject.all
		@ruby = RubyProject.all
		@js = JavascriptProject.all 
	end

	def new
		if params[:value] == "ror"
			@project = RubyOnRailsProject.new
		elsif params[:value] == "js"
			@project = JavascriptProject.new
		else
			@project = RubyProject.new
		end
	end

	private
	
	def require_login
		if current_user
			return current_user
		else
			redirect_to '/'
		end
	end

end