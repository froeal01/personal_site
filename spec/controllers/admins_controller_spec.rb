require 'spec_helper'
include ApplicationHelper

describe AdminsController do
	rails_project = FactoryGirl.create(:ruby_on_rails_project)
	ruby_project = FactoryGirl.create(:ruby_project)
	javascript_project = FactoryGirl.create(:javascript_project)

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
	
		it "populates an array of rails projects" do 
			current_user
			get :index
			assigns(rails_project).should eq(@ror)
		end

		it "populates an array of ruby projects" do 
			current_user
			get :index
			assigns(ruby_project).should eq(@ruby)
		end

		it "populates an array of javascript projects" do 
			current_user
			get :index
			assigns(javascript_project).should eq(@js)
		end

	end

	describe "new" do 
		it "should go to the correct route" do 
			{get: new_admin_path}.should route_to(
				controller: "admins",
				action: "new")
		end

		it "should render the correct template" do 
			sign_in
			get :new
			# response.should render_template :new
		end
	end
end