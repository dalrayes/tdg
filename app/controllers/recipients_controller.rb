class RecipientsController < ApplicationController
	before_action :authenticate_user!

  def new
  	@recipient = Recipient.new
  	@recipient.occasions.new
  end
  
  def create
  	@recipient = current_user.recipients.new(recipient_params)

  	if @recipient.save
  		redirect_to groups_path
  	else
  		render action: :new
  	end
  end

  private

  def recipient_params
  	params.require(:recipient).permit(:giver_id, :name, :age, :gender, :relationship, occasions_attributes: [:recipient_id, :date, :occasion_type, :reminder])
  end
end