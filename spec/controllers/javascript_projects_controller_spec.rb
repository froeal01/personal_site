require 'spec_helper'

describe JavascriptProjectsController do
	describe "#index" do
		it "should take me to the index of the javaScript Project page" do
			visit javascript_projects_path
		end
	end
end
