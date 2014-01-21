require 'spec_helper'

describe HomePagesController do

	describe "#root" do
		it "should bring me to the web pages home page" do
			visit("/")
		end
	end
end