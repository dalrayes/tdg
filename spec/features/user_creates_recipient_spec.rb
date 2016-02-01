require 'rails_helper'

feature 'Create Recipient Form' do 
	scenario 'a user can add a recipient' do
		visit 'recipients#new'
		# expect(page).to have_text 'Add a new recipient'
	end
end