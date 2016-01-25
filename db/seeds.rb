# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(
	first_name:"Dalal",
	last_name: "Alrayes",
	age: 21,
	email: 'test@example.com',
	password: 'password',
	gender: 'female',
	giftr_news: 'yes')

recipient = Recipient.create(
	name:"Tatyana",
	giver: user,
	age:21,
	gender:'female',
	relationship:'friend',
	)

Occasion.create(
	recipient: recipient,
	date: '2016-02-03',
	occasion_type:"birthday",
	reminder: 'yes'
	)
