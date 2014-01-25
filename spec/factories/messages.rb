require 'spec_helper'

FactoryGirl.define do
	factory :message do |f|
		f.name 'test'
		f.subject 'test'
		f.email 'test@test.com'
		f.body 'test'
	end
	factory :invalid_message, parent: :message do |f|
		f.name nil
	end
end