class SessionsController < ApplicationController

	
	def new
		@user = User.new
	end

	def create
		
		user = User.find_by_username(params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			session[:auth_token] =  user.auth_token
				redirect_to admins_path
		else
			redirect_to ('/')
		end

	end

	def destroy
		session.delete(:auth_token)
		redirect_to ('/')
	end

end