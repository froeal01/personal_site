require 'spec_helper'

describe JavascriptProject do
	it "has a valid factory" do
		FactoryGirl.create(:javascript_project).should be_valid
	end
	it "is not valid with a project url missing" do
		FactoryGirl.build(:javascript_project, url: nil).should_not be_valid
	end
	it "is not valid with a project name missing" do
		FactoryGirl.build(:javascript_project, name: nil).should_not be_valid
	end
	it "is not valid with a project description missing" do
		FactoryGirl.build(:javascript_project, description: nil).should_not be_valid
	end
end
