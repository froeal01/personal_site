require 'spec_helper'

describe HomePagesController do

	describe "#root" do
		it " / should bring me to the web pages home page" do
			{get: '/'}.should route_to(
				controller: 'home_pages',
				action: 'index')
		end
		it "renders the correct view" do
			get :index
			expect(response).to render_template('index')
		end
	end

end