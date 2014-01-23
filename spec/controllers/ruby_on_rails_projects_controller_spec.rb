require 'spec_helper'

describe RubyOnRailsProjectsController do
	describe "#index" do
		it "should take me to the index of the Ruby on Rails Project page" do
			visit ruby_on_rails_projects_path
		end
	end
end