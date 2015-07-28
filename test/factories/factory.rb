FactoryGirl.define do
	
	factory :comment do
		message "love this plcae"
		rating "1_star"
		association :user
		association :place
	end

	factory :place do
		name "pizza place"
			address "197 grand street, NYC"
			description "best pizza in pike"
		association :user
	end

	factory :user do
		sequence :email do |n|
			"fist#{n}@gmail.com"
		end
		password "nomsterbaby"
		password_confirmation "nomsterbaby"
	end


end