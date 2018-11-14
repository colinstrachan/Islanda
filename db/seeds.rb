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

colin = User.new(first_name: 'Colin', last_name: 'Strachant', email: 'colin@gmail.com', password: 'abc123', remote_photo_url:"https://avatars.githubusercontent.com/colinstrachan")
colin.save!
francisco = User.new(first_name: 'Francisco', last_name: 'Mc Giver', email: 'francisco@gmail.com', password: 'abc123', remote_photo_url:"https://avatars.githubusercontent.com/fdipersia")
francisco.save!
guillo = User.new(first_name: 'Guillo', last_name: 'Palermo', email: 'guillo@gmail.com', password: 'abc123', remote_photo_url:"https://avatars.githubusercontent.com/guillo16")
guillo.save!
markus = User.new(first_name: 'Marcus', last_name: 'Gallardo', email: 'marcus@gmail.com', password: 'abc123', remote_photo_url:"https://avatars.githubusercontent.com/marcus1309")
markus.save!
bob = User.new(first_name: 'Bob', last_name: 'Messi', email: 'bob@gmail.com', password: 'abc123', remote_photo_url:"https://avatars.githubusercontent.com/entrepum")
bob.save!

hawaii = Island.new(name: 'Hawaii', description: "Paradise is real", price: 15000, capacity: 400, climate: "Tropical Wet", user: colin, location: "honolulu", remote_photo_url: "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
hawaii.save!

maui = Island.new(name: 'Maui', description: "Very nice place", price: 2000, capacity: 25, climate: "Tropical Dry", user: francisco, location: "maui", remote_photo_url: "https://images.pexels.com/photos/1236504/pexels-photo-1236504.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
maui.save!

fiji = Island.new(name: 'Fiji', description: "The best place of the world", price: 3000, capacity: 100, climate: "Temperate", user: guillo, location: "fiji", remote_photo_url: "https://images.pexels.com/photos/870711/pexels-photo-870711.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
fiji.save!

maldives = Island.new(name: 'Maldives', description: "The best place of the 7 seas", price: 4000, capacity: 100, climate: "Arctic", user: markus, location: "maldives", remote_photo_url: "https://images.pexels.com/photos/247447/pexels-photo-247447.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
maldives.save!

srilanka = Island.new(name: 'Sri Lanka', description: "Incredible place in South Asia", price: 6000, capacity: 50, climate: "Temperate", user: bob, location: "sri lanka", remote_photo_url: "https://images.pexels.com/photos/532860/pexels-photo-532860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
srilanka.save!

15.times do 
  
  start_date = Date.today + rand(15..60)
  end_date = start_date + rand(15..120)
  island = [hawaii, maui, fiji, maldives, srilanka].sample
  user = [colin, francisco, guillo, markus, bob].sample

  booking = Booking.new(start_date: start_date, end_date: end_date, island: island, user: user)
  booking.save!

end

puts "Seeding completed."
