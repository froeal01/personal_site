require 'spec_helper'

describe AdminsController do

	describe "index" do
		it "should go to the correct route" do 
			{get: admins_path}.should route_to(
				controller: 'admins',
				action: 'index')
		end
		it "should not render the correct template if admin is not signed in" do 
			get :index
			response.should redirect_to('/')
		end
	end

end