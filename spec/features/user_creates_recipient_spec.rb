require 'rails_helper'

feature 'Create Recipient Form' do 
	scenario 'a user can add a new recipient & occasion' do
    user = FactoryGirl.create(:user)

		visit user_session_path

    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password

    click_button "Log in"

		recipient = FactoryGirl.build(:recipient)
		visit new_recipient_path

		expect(page).to have_content 'Who is the gift for?'
		# click_button "Add a new recipient"
		
		fill_in 'recipient_name', with: recipient.name
		fill_in 'recipient_age', with: recipient.age
		choose('recipient_gender_female')
		select('Friend', :from => 'recipient_relationship')
		fill_in 'recipient_occasions_attributes_0_date', with: '2016/12/12'
		select('Birthday', :from => 'recipient_occasions_attributes_0_occasion_type')
		check('recipient_occasions_attributes_0_reminder')
		
		click_button 'Next: Create My Group'

		expect(page).to have_current_path(group_path(Group.last))

	end
end