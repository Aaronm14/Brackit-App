# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Team.destroy_all
# # create your teams here
# Team.create!(name: "Raptors", city: "Raleigh", state: "NC")

# Game.destroy_all
# # create your games here

Tournament.create!(name: "Peach Jam", city: "Raleigh", state: "NC", start_date: "2013-05-26", end_date: "2013-05-26")