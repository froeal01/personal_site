require 'spec_helper'

describe HomePagesController do

	describe "#root" do
		it "should bring me to the web pages home page" do
			visit("/")
		end
	end
	describe "#show" do
		it "should allow me to enter a url with /show" do
			visit("/show")
		end
	end
end