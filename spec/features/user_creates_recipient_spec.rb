require 'rails_helper'

feature 'Create Recipient Form' do 
	scenario 'a user can create an occasion' do
		visit 'recipients#new'
	end
end