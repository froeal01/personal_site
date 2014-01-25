require 'spec_helper'

describe Message do 

	describe "Validations" do 
		it { should allow_mass_assignment_of(:email) }
		it { should allow_mass_assignment_of(:name) }
		it { should allow_mass_assignment_of(:subject) }
		it { should allow_mass_assignment_of(:body) }
		it { should allow_value('123@test.com').for(:email) }
		it { should_not allow_value('12g@gea').for(:email) }
		it { should validate_presence_of(:email) }
		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:subject) }
		it { should validate_presence_of(:body) }
	end
end