# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Gender.create({name: "Male"})
Gender.create({name: "Female"})

MaritalStatus.create({name: "Single"})
MaritalStatus.create({name: "Married"})
MaritalStatus.create({name: "Monk"})
