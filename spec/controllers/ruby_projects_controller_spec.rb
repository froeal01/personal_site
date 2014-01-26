require 'spec_helper' 

describe RubyProjectsController do

	describe "#INDEX" do 
		it "should take me to the Ruby Projects Main Page" do
			visit ruby_projects_path
		end
	end
	describe "#show" do
		project = FactoryGirl.create(:ruby_project)

		it "should take me to the show page of the correct project" do
			get :show, id: project.id
			response.should render_template :show
		end
	end
end