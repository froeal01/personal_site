require "spec_helper"

describe NotificationsMailer do
	let(:message) {Message.new({name:"test", subject:'test', body:'test', email:'test@test.com'})}
	let(:mail) {NotificationsMailer.new_message(message)}

	describe "#new_message" do
		it "should email the correct address" do
			expect(mail.to).to eq(['froeal01@gmail.com'])
		end
		it "should render the senders information" do
			expect(message.email).to eq("test@test.com")
		end
		it "should send from correct address" do
			expect(mail.from).to eq(['winston.thorman@gmail.com'])
		end
	end


end
