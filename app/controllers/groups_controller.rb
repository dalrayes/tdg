class GroupsController < ApplicationController

	def create
	end
	
	def show
		@group = Group.find(params[:id])
		@occasion = @group.occasion
		@recipient = @group.occasion.recipient
	end
end

