# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seeding process!"

puts "Destroy all elements in database..."

Booking.destroy_all
Island.destroy_all
User.destroy_all

puts "Start creating new seeds"

test_usert = User.new(first_name: 'Colint', last_name: 'Strachant', email: 'shopping@stratchanmusic.com', password: '0123456789')
test_usert.save!

hawai2 = Island.new(name: 'guillot', description: "dd", price: 5, capacity: 4, climate: "gg", user: test_usert, location: "pacifict", remote_photo_url: "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
hawai2.save!

inagua2 = Island.new(name: 'Bahamast', description: "very nice place", price: 2000, capacity: 25, climate: "sunny", user: test_usert, location: "Inagua National Parkt", remote_photo_url: "https://images.pexels.com/photos/1236504/pexels-photo-1236504.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
inagua2.save!

cotton2 = Island.new(name: 'Cottont', description: "the best place of the world", price: 3000, capacity: 100, climate: "high temperatures", user: test_usert, location: "Cotton Cayt", remote_photo_url: "https://images.pexels.com/photos/870711/pexels-photo-870711.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
cotton2.save!

lehua2 = Island.new(name: 'Lehua-hawait', description: "the best place of the pacific", price: 4000, capacity: 100, climate: "high temperatures", user: test_usert, location: "Lehuat", remote_photo_url: "https://images.pexels.com/photos/247447/pexels-photo-247447.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
lehua2.save!

fare2 = Island.new(name: 'faret', description: "incredible place", price: 6000, capacity: 50, climate: "high temperatures", user: test_usert, location: "faret", remote_photo_url: "https://images.pexels.com/photos/532860/pexels-photo-532860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
fare2.save!

puts "Seeding completed."
