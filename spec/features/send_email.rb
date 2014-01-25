require 'spec_helper'

feature "sending an email" do
	subject {page}

	scenario "should send an email with valid contact information" do
		message = FactoryGirl.build(:message)
			visit "/"

			fill_in "Name", with: message.name
			fill_in "Email", with: message.email
			fill_in "Subject", with: message.subject
			fill_in "Body", with: message.body

			click_button "Send"
	
		expect(page).to have_content("Message was sent.")
	end
	scenario "should not send an email with invalid contact information" do
		invalid_message = FactoryGirl.build(:invalid_message)
			visit "/"

			fill_in "Name", with: invalid_message.name
			fill_in "Email", with: invalid_message.email
			fill_in "Subject", with: invalid_message.subject
			fill_in "Body", with: invalid_message.body

			click_button "Send"
	
		expect(page).to have_content("Please make sure all fields are filled in correctly")
	end
end