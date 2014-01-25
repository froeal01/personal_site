require 'spec_helper'


describe PdfsController do

	describe "#INDEX" do 
		it "routes /resume to pdfs#index" do
			{ :get => "/resume"}.should route_to(
				:controller => 'pdfs',
				:action => 'index')
		end
		it "renders the correct view" do
			get :index
			expect(response).to render_template("index")
		end
	end

end