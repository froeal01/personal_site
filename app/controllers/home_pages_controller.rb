class HomePagesController < ApplicationController

	def index
		@message = Message.new
	end
	
	def show
	end

end
