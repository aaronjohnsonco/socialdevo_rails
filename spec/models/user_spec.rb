require 'rails_helper'

describe User do
	it 'has a valid factory' do
		expect(FactoryGirl.build(:user)).to be_valid
	end	
	it 'is invalid without an email' do
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to be_invalid
	end
	it 'is invalid without a password' do
		user = FactoryGirl.build(:user, password: nil)
		expect(user).to be_invalid
	end
end