require 'rails_helper'

feature "User Registers" do

	scenario "with valid details" do
		user = FactoryGirl.build(:user)
		visit '/'
		click_link('Join', match: :first)
		expect(current_path).to eq(new_user_registration_path)
		fill_in 'user_email', with: user.email 
		fill_in "user_password", with: user.password
		fill_in "user_first_name", with: user.first_name 
		fill_in "user_last_name", with: user.last_name
		fill_in "user_age", with: user.age 
		choose('user_gender_female')
		check("Please send me updates about Giftr")
		click_button "Start Gifting"
		# expect(current_path).to eq(new_group_path)
		# expect(page).to have_content " "
    # expect(page).to have_content " "
	end
end
