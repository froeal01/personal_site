require 'spec_helper' 

describe RubyProjectsController do

	describe "#INDEX" do 
		it "should take me to the Ruby Projects Main Page" do
			visit ruby_projects_path
		end
	end
end