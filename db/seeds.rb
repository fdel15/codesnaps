# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "fdel15", email: "frankdaedalus@gmail.com", password:"12345678", password_confirmation: "12345678")
User.create(username: "fdel16", email: "frankdaedalus@gmail4.com", password:"12345678", password_confirmation: "12345678")
User.create(username: "fdel17", email: "frankdaedalus@gmail3.com", password:"12345678", password_confirmation: "12345678")
User.create(username: "fdel18", email: "frankdaedalus@gmail2.com", password:"12345678", password_confirmation: "12345678")
User.create(username: "fdel19", email: "frankdaedalus@gmail1.com", password:"12345678", password_confirmation: "12345678")
p "Test users created"