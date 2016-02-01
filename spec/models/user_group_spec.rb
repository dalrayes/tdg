require 'rails_helper'

describe UserGroup do
	it {should belong_to(:member).class_name('User') }
	it {should belong_to(:group)}
end
