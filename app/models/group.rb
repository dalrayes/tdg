class Group < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
  belongs_to :occasion


def add_description(message)
	self.description = message
end


end