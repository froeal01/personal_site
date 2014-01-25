require 'spec_helper'

describe ContactsController do
	message = FactoryGirl.build(:message)
	invalid_message = FactoryGirl.build(:invalid_message)

	describe "#new" do 
		it "should respond to the correct route" do
			{get: '/contact'}.should route_to(
				controller: 'contacts',
				action: 'new')
		end
	end


	describe "#create" do
		it "should respond to the correct route" do
			{post: '/contact'}. should route_to(
				controller: 'contacts',
				action: 'create')
		end 

		it "should send an email if all fields are valid" do
			expect{
				post :create, message: FactoryGirl.attributes_for(:message)}.to change(ActionMailer::Base.deliveries, :count).by(1)
		end
		it "should not send an email if a field is invalid" do
						expect{
				post :create, message: FactoryGirl.attributes_for(:invalid_message)}.to_not change(ActionMailer::Base.deliveries, :count).by(1)
		end
	end

end













