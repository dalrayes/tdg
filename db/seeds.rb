# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_user = User.create!(
	first_name:"Dalal",
	last_name: "Alrayes",
	age: 21,
	email: 'test@example.com',
	password: 'password',
	gender: 'female',
	giftr_news: 'yes'
	)

recipient = Recipient.create!(
	name:"Tatyana",
	giver: test_user,
	age:21,
	gender:'female',
	relationship:'friend',
	)

occasion = Occasion.create!(
	recipient: recipient,
	date: '2016-02-03',
	occasion_type:"birthday",
	reminder: 'yes'
	)

group= Group.create!(
	owner: test_user,
	occasion: occasion,
	group_status: 'open',
	custom_url: 'www.givegiftr.co',
	description: 'She likes cats',
	custom_message: 'Need a gift for my friend'
	)

user_group = UserGroup.create!(
	member: test_user,
	group: group,
	member_status: 'active',
	member_notification: 'on'
	)



