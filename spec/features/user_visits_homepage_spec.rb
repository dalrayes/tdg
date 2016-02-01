require	'rails_helper'

feature 'User visits homepage successfully' do
	scenario 'successfully' do
		visit root_path

		expect(page).to have_css 'h1', text: "Friends don't let friends give bad gifts"
	end	
end
