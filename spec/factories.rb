FactoryGirl.define do
  factory :user, aliases: [:owner, :giver, :member] do
    email "testuser@testuser.com"
    password 		"password"
    first_name 	"Test"
    last_name  	"User"
    age 				21
  end
end