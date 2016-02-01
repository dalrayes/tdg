require 'rails_helper'

describe RecipientsController do
	describe "#new" do
		it "should render the new form" do
			user = FactoryGirl.create(:user)
			sign_in(user)
			get :new
			
			expect(response).to render_template(:new)
		end
	end
end