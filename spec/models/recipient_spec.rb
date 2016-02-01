require 'rails_helper'

describe Recipient do
	it {should belong_to(:giver).class_name('User') }
	it {should have_many(:occasions)}
	it {should accept_nested_attributes_for(:occasions)}
end
