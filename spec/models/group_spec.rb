require 'rails_helper'

describe Group do
	it {should belong_to(:owner).class_name('User') }
	it {should belong_to(:occasion)}
end
