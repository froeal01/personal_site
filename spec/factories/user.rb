FactoryGirl.define do
	factory :user do |f|
		f.username "Example"
		f.password "Secret"
		f.password_confirmation "Secret"
		f.auth_token '1234t2'
	end
end