require 'spec_helper'

describe "Admin log in"
	user = User.create( username: "example", password: "secret")


	it 'accesses the admin section of the website' do 

		visit '/login'
		fill_in "Username", with: user.username
		fill_in "Password", with: user.password
		click_button 'Sign In'

		current_path.should eq admins_path
		within "h1" do 
			page.should have_content 'Welcome to project manager'
		end

	end