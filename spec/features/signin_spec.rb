require 'rails_helper'
include Warden::Test::Helpers            
Warden.test_mode!

feature 'User Sign In' do
	scenario 'user signs in' do
		visit root_path
		click_link 'Sign In'
		expect(current_path).to eq new_user_session_path
		fill_in "Email", with: 'test@example.com'
		fill_in "Password", with: 'secretpassword'
		click_button "Sign In"
		expect(current_path).to eq root_path
	end
end