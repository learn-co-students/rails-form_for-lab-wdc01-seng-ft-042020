# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all


akids = Student.create(first_name: "A-kids", last_name: "Home Depot")
bkids = Student.create(first_name: "B-kids", last_name: "Best Buy")
ckids = Student.create(first_name: "C-kids", last_name: "Target")

slam = SchoolClass.create(title: "A-PLUS", room_number: 20)
bam = SchoolClass.create(title: "B-PLUS", room_number: 10)
cram = SchoolClass.create(title: "C-PLUS", room_number: 4)

