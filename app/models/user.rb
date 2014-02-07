class User < ActiveRecord::Base	
	before_create {generate_auth_token(:auth_token)}
	has_secure_password

	def generate_auth_token(column)
		begin 
			self[column] = SecureRandom.urlsafe_base64
		end while User.exists?(column => self[column])
	end





end