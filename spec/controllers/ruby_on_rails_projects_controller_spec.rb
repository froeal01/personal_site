require 'spec_helper'

describe RubyOnRailsProjectsController do
	describe "#index" do
		it "should take me to the index of the Ruby on Rails Project page" do
			visit ruby_on_rails_projects_path
		end
	end

	describe "#show" do
		project = FactoryGirl.create(:ruby_on_rails_project)

		it "should take me to the show page of the correct project" do
			get :show, id: project.id
			response.should render_template :show
		end
	end


end