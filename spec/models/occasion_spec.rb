require 'rails_helper'

describe Occasion do
	it {should belong_to(:recipient) }
	it {should have_many(:groups)}
end
