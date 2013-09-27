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

AgeGroup.create!(name: "16u", sex: "male")
AgeGroup.create!(name: "14u", sex: "female")

Team.create!(name: "Triad Titans", age_group_id: "2", city: "Kernersville", state: "NC", contact:"1231234")
Team.create!(name: "Raleigh Raptors", age_group_id: "1", city: "Raleigh", state: "NC", contact:"1231234")
Team.create!(name: "Charlotte Stars", age_group_id: "1", city: "Charlotte", state: "NC", contact:"1231234")
Team.create!(name: "Greensboro Gaters", age_group_id: "1", city: "Greensboro", state: "NC", contact:"1231234")
Team.create!(name: "Kernersville Mavericks", age_group_id: "1", city: "Kernersville", state: "NC", contact:"1231234")
Team.create!(name: "Atlanta Celtics", age_group_id: "1", city: "Atlants", state: "NC", contact:"1231234")
Team.create!(name: "Winston Steal", age_group_id: "1", city: "Winston-Salem", state: "NC", contact:"1231234")
Team.create!(name: "Watauga Storm", age_group_id: "1", city: "Boone", state: "NC", contact:"1231234")