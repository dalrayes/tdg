require 'rails_helper'

describe User do
	it {should have_many(:recipients).with_foreign_key('giver_id') }
	it {should have_many(:occasions).through(:recipients)}
	it {should have_many(:user_groups).with_foreign_key('member_id')}
	it {should have_many(:groups).through(:user_groups)}
end
