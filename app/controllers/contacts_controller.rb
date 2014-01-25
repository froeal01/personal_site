class ContactsController < ApplicationController
	include ActiveModel::ForbiddenAttributesProtection
		
		def new
			@message = Message.new
		end

		def create

			@message = Message.new(contact_params)

			if @message.valid?
				NotificationsMailer.new_message(@message).deliver
				flash[:notice] = "Message was sent. Thank you!"
				redirect_to root_path
			else
				flash[:notice] = "Please make sure all fields are filled in correctly"
				redirect_to root_path
			end
		end


		private

		def contact_params
			params.require(:message).permit(:name, :email, :subject, :body)
		end
end
