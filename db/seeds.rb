# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


hawai = Island.create(name: 'guillo', description: "dd", price: 5, capacity: 4, climate: "gg", user_id: 1, location: "pacific")
inagua = Island.create(name: 'Bahamas', description: "very nice place", price: 2000, capacity: 25, climate: "sunny", user_id: 1, location: "Inagua National Park")
cotton = Island.create(name: 'Cotton', description: "the best place of the world", price: 3000, capacity: 100, climate: "high temperatures", user_id: 1, location: "Cotton Cay")
lehua = Island.create(name: 'Lehua-hawai', description: "the best place of the pacific", price: 4000, capacity: 100, climate: "high temperatures", user_id: 1, location: "Lehua")
fare = Island.create(name: 'fare', description: "incredible place", price: 6000, capacity: 50, climate: "high temperatures", user_id: 1, location: "fare")


