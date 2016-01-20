# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(
	first_name:"Dalal",
	last_name: "Alrayes",
	age: 21,
	email: 'dalrayes@gmail.com',
	password_hash: '##',
	gender: 'female',
	giftr_news: 'yes')

rec = Recipient.create(
	name:"Tatyana",
	giver_id:"1",
	age:21,
	gender:'female',
	relationship:'friend',
	)

Occasion.create(
	recipient: rec,
	date: '2016-02-03',
	occasion_type:"birthday",
	reminder: 'yes'
	)