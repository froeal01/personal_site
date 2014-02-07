module ApplicationHelper

	def current_user
		@current_user ||= User.find_by_auth_token(session[:auth_token]) if session[:auth_token]
	end


end
