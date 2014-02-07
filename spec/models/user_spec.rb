require 'spec_helper'

describe User do 
	let(:user) {FactoryGirl.create(:user)}
	describe "assigning attributes" do 
		it "should have a valid factory" do 
			FactoryGirl.create(:user).should be_valid
		end

		it "should allow for username to be assigned" do 
			user = User.create(username: "example")
			expect(user.username).to eq("example")
		end
		
		it "should change authenticity token" do
			token = user.auth_token
			user.generate_auth_token(:auth_token)
			expect(user.auth_token).to_not eq(token)
		end

	end


end