require 'spec_helper' 

describe SessionsController do
	user = FactoryGirl.create(:user)

	describe "/login" do 
			subject {page}
			it "should have a valid route" do 
				{get: '/login'}.should route_to(
					controller: 'sessions',
					action: 'new')
			end
			it "should render correct template" do 
				get :new
				response.should render_template :new
			end
			
			it "should login when there is valid information" do 
				post :create, :session => { :username => user.username, :password => user.password }
        # response.should route_to('/admin')
			end

			it "should not login when the information is not valid" do 
				post :create, :session => { :username => "invalid", :password => user.password }
				# response.should route_to('/admin')
			end
		end

end