# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seeding..."
test_user = User.new(first_name: 'Colin', last_name: 'Strachan', email: 'shopping@strachanmusic.com', password: '0123456789')
test_user.save!
puts "colin saved" if test_user.save == true

hawai = Island.new(name: 'guillo', description: "dd", price: 5, capacity: 4, climate: "gg", user: test_user, location: "pacific", remote_photo_url: "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
hawai.save!
puts "hawai saved" if hawai.save == true

inagua = Island.new(name: 'Bahamas', description: "very nice place", price: 2000, capacity: 25, climate: "sunny", user: test_user, location: "Inagua National Park", remote_photo_url: "https://images.pexels.com/photos/1236504/pexels-photo-1236504.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
inagua.save!
puts "inagua saved" if inagua.save == true

cotton = Island.new(name: 'Cotton', description: "the best place of the world", price: 3000, capacity: 100, climate: "high temperatures", user: test_user, location: "Cotton Cay", remote_photo_url: "https://images.pexels.com/photos/870711/pexels-photo-870711.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
cotton.save!
puts "cotton saved" if cotton.save == true

lehua = Island.new(name: 'Lehua-hawai', description: "the best place of the pacific", price: 4000, capacity: 100, climate: "high temperatures", user: test_user, location: "Lehua", remote_photo_url: "https://images.pexels.com/photos/247447/pexels-photo-247447.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
lehua.save!
puts "lehua saved" if lehua.save == true

fare = Island.new(name: 'fare', description: "incredible place", price: 6000, capacity: 50, climate: "high temperatures", user: test_user, location: "fare", remote_photo_url: "https://images.pexels.com/photos/532860/pexels-photo-532860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
fare.save!
puts "fare saved" if fare.save == true

puts "Seeding completed."
