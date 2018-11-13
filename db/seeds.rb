# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


hawai = Island.create(name: 'guillo', description: "dd", price: 5, capacity: 4, climate: "gg", user_id: 1, location: "pacific", remote_photo_url: "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
inagua = Island.create(name: 'Bahamas', description: "very nice place", price: 2000, capacity: 25, climate: "sunny", user_id: 1, location: "Inagua National Park", remote_photo_url: "https://images.pexels.com/photos/1236504/pexels-photo-1236504.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
cotton = Island.create(name: 'Cotton', description: "the best place of the world", price: 3000, capacity: 100, climate: "high temperatures", user_id: 1, location: "Cotton Cay", remote_photo_url: "https://images.pexels.com/photos/870711/pexels-photo-870711.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
lehua = Island.create(name: 'Lehua-hawai', description: "the best place of the pacific", price: 4000, capacity: 100, climate: "high temperatures", user_id: 1, location: "Lehua", remote_photo_url: "https://images.pexels.com/photos/247447/pexels-photo-247447.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
fare = Island.create(name: 'fare', description: "incredible place", price: 6000, capacity: 50, climate: "high temperatures", user_id: 1, location: "fare", remote_photo_url: "https://images.pexels.com/photos/532860/pexels-photo-532860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")


