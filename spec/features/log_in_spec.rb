require 'spec_helper'

describe "Admin log in" do
	user = FactoryGirl.create(:user)


	it 'accesses the admin section of the website' do 

		visit '/login'
		fill_in "username", with: user.username
		fill_in "password", with: user.password
		click_button 'Sign In'

		current_path.should == admins_path
	end
end