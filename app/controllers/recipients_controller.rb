class RecipientsController < ApplicationController
	before_action :authenticate_user!

  def index
  end

  def new
  	@recipient = Recipient.new
  	@occasion= @recipient.occasions.new
  end
  
  def create
  	@recipient = current_user.recipients.new(recipient_params)

  	if @recipient.save
      @occasion = @recipient.occasions.last
      @group = @occasion.groups.create(owner:current_user)
  		redirect_to group_path(@group)
  	else
  		render action: :new
  	end
  end

  private

  def recipient_params
  	params.require(:recipient).permit(:giver_id, :name, :age, :gender, :relationship, occasions_attributes: [:recipient_id, :date, :occasion_type, :reminder, groups_attributes: [:owner_id, :occasion_id, :group_status, :custom_url, :description]])
  end
end