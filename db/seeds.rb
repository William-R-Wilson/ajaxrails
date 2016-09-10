# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
names = ["Rick Grimes", "Shane Walsh", "Glen Rhee", "Darryl Dixon"]
names.each do |n|
  u = User.create(name: n)
end
