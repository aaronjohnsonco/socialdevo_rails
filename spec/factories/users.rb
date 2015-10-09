FactoryGirl.define do
	factory :user do
		password 'secretpassword'
		email 'test@example.com'
	end
end