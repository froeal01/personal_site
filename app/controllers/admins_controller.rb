class AdminsController < ApplicationController
	include ApplicationHelper
	before_filter :require_login

	def index
		@ror = RubyOnRailsProject.all
		@ruby = RubyProject.all
		@js = JavascriptProject.all 
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