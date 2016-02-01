FactoryGirl.define do
  factory :user, aliases: [:owner, :giver, :member] do
    email 			"testuser@testuser.com"
    password 		"password"
    first_name 	"test"
    last_name  	"user"
    age 				21
  end


  factory :recipient do
  	name 				"Sara"
  	age					20
  end

  factory :occasion do
  	recipient
  end

end