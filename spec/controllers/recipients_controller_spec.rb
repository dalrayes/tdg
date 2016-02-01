require 'rails_helper'

describe RecipientsController do
	describe "#new" do
		it "should render the new form" do
			get :new
			
			expect(response).to render_template(:new)
		end
	end
end