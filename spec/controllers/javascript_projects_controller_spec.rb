require 'spec_helper'

describe JavascriptProjectsController do
	describe "#index" do
		it "should take me to the index of the javaScript Project page" do
			visit javascript_projects_path
		end
	end

	describe "#show" do
		project = FactoryGirl.create(:javascript_project)

		it "should take me to the show page of the correct project" do
			get :show, id: project.id
			response.should render_template :show
		end
	end
end
