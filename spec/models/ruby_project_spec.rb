require 'spec_helper'

describe RubyProject do
	it "has a valid factory" do
		FactoryGirl.create(:ruby_on_rails_project ).should be_valid
	end
	it "is not valid with a project url missing" do
		FactoryGirl.build(:ruby_on_rails_project , url: nil).should_not be_valid
	end
	it "is not valid with a project name missing" do
		FactoryGirl.build(:ruby_on_rails_project , name: nil).should_not be_valid
	end
	it "is not valid with a project description missing" do
		FactoryGirl.build(:ruby_on_rails_project , description: nil).should_not be_valid
	end
end