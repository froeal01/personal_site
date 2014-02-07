require 'spec_helper'
include ApplicationHelper

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
		it "should render correct template if admin is signed in" do
			current_user
			get :index
			# response.should render_template :index
		end
	end

end