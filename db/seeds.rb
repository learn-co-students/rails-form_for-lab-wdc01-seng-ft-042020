# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SchoolClass.destroy_all
Student.destroy_all

SchoolClass.create(title: "Software Engineering", room_number: 504)
Student.create(first_name: "Bob", last_name: "Dylan")

