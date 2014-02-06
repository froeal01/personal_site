require 'spec_helper' 

describe SessionsController do

	describe "/login" do 
			subject {page}
			it "should render the correct view" do 
				{get: '/login'}.should route_to(
					controller: 'sessions',
					action: 'login')
			end
			it "should render the admin login form" do 
				visit '/login'
				it {should have_field("username")}
				it {should have_field("password")}
			end
		end

end