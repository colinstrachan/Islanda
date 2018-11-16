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

maui = Island.new(name: 'Maui', description: "Very nice place", price: 2000, capacity: 25, climate: "Tropical Dry", user: francisco, location: "maui", remote_photo_url: "https://images.pexels.com/photos/1236504/pexels-photo-1236504.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
maui.save!
fiji = Island.new(name: 'Fiji', description: "The best place of the world", price: 3000, capacity: 100, climate: "Temperate", user: guillo, location: "fiji", remote_photo_url: "https://images.pexels.com/photos/870711/pexels-photo-870711.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
fiji.save!
hawai = Island.new(name: 'Honolulu', description: "Like the pearls of a dissembled necklace, the islands of Maldives shimmer in the vast blue of the Indian Ocean. Havens for seafarers of times gone by, who plied these waters in pursuit of passion and fortune, they continue to be the most sought-after destinations for holiday makers from far and wide. The turquoise blue lagoons and silvery white sandy beaches, fringed by lush green coconut palms make the islands all the more unique for visitors.
Maafushi, one of the thousands of islands that make up the archipelago of the Maldives, is a popular destination for island lovers. In close proximity to the capital island Male' and the international airport, it can be reached either by daily ferry service or by speed boats.", price: 15000, capacity: 400, climate: "Tropical Wet", user: colin, location: "honolulu hawaii", remote_photo_url: "https://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/1486500574/Ionian-islands-zakynthos-greece-ROMISLAND0217.jpg?itok=UNlXdpC2")
hawai.save!
maldives = Island.new(name: 'Maafushi', description: "The best place of the 7 seas", price: 4000, capacity: 100, climate: "Arctic", user: markus, location: "maldives", remote_photo_url: "https://www.placesyoullsee.com/wp-content/uploads/2016/08/10-Pictures-of-The-Best-Island-in-the-World-4.jpg")
maldives.save!

gladden = Island.new(name: 'Gladden', description: "A swirl of turquoise and aquamarine lagoons cradle Gladden, an island fringed with coral and white sand in the heart of the Belize Barrier Reef Reserve System. This island jewel harbors your own private sanctuary, a casually elegant villa designed for just one couple, with the all-inclusive service of a luxury resort. There is a second master suite should you wish to share Gladden with friends or family. Our staff resides unseen on the smaller island behind Gladden,  ready to respond to any request at a moment’s notice. A “privacy meter” indicates if a member of the team is on the main island for any reason, because we want our guests to feel free to be themselves. There are no other neighbors – it’s just you and the views.", price: 2950, capacity: 15, climate: "Desert", user: markus, location: "belize barrier reef", remote_photo_url: "http://www.gladdenprivateisland.com/wp-content/uploads/2017/08/newsig-1.jpg")
gladden.save!

katitche = Island.new(name: 'Katitche Point', description: "Elevated above a rugged shore surrounded by three nearly deserted white sand beaches rises Katitche Point Greathouse: a rare oceanfront estate with captivating architectural lines overlooking the Sir Francis Drake Channel in Virgin Gorda.

Dramatic from any vantage, the roofs of this newly renovated villa mirror the Great Pyramids of Egypt offering high ceilings throughout each room, providing excellent natural ventilation.

5 elegant bedroom suites each with private verandas and unparalleled views envelope an interior courtyard with swaying palms and rich tropical landscaping that features contemporary sculpture by renowned artist Joerg Siegele. The master suite holds a secret outdoor bath and shower, a rejuvenating haven amongst koi ponds and greenery.

Beyond the courtyard stands the commanding three story pyramidal main house, the preeminent living and entertaining space that features a gallery loft and meditative ‘crow's nest' tucked into its vast cathedral ceiling. The custom solid teak kitchen with its adjacent indoor-outdoor pool bar is perfectly equipped with Viking professional appliances, and lends itself well to gourmet entertaining, as it opens to the grand living and dining room.

Indoor comfort flows seamlessly out of doors onto the wraparound veranda, where hammocks, porch swings and al fresco dining await to provide endless moments of tranquility with views in every direction. The pristine horizon-edged pool beckons from the sundeck just beyond, where Caribbean sunshine graces Katitche Point, nearly every day of the year.



- Waterfront location surrounded by white sand beaches at Pond Bay, Savannah Bay, and Mahoe Bay

- Exceptional Privacy at end of cul de sac

- Exclusive Virgin Gorda Community

- Walk-in wine cellar

- Small Luxury Hotels of the World member since 2006.", price: 3450, capacity: 15, climate: "Tropical Wet", user: francisco, location: "Mahoe Bay, Virgin Gorda", remote_photo_url: "https://www.privateislandsonline.com/uploads/resize/_2002_5867c22ac0204.jpg-1100-731.jpg")
katitche.save!

deepwater = Island.new(name: 'Deepwater Island', description: "This summer, swap your typical cottage rental for the luxury of renting your very own private island - a perfect retreat for two. For a full week, a month or the whole season, envision yourself making memories on the speckled granite face of Deepwater Island. It is the ultimate home away from home with modern ameneties of a city-dweller’s abode on three-fourths acre of personal paradise.

Located in a protected bay and surrounded by the Massassauga Provincial Park, Deepwater Island enjoys privacy and serenity that is usually only experienced much farther north. But the easily accessed island is only a two-hour drive from Toronto or a short flight from major cities in Canada and the United States. 

After a 20-minute ride from the marina, you’ll have your first glimpse of Deepwater Island’s charming quarters. Inside you’ll find a fully equipped kitchen alongside the dining room with cathedral ceilings, creating the perfect pair for intimate dinner parties. A granite fireplace elegantly illuminates the 360-degree view of the surrounding waters from the elevated vantage point of the cottage. Excellent 3G cell phone reception.

In the waters at the rocky shore, a kayak and two canoes are at the sole disposal of the explorers in your crew. Paddle over to a nearby island and restock on groceries and wine – it’s all right there. For the laid-back members of the bunch, two large wooden decks offer the makings of an outdoor lounge. While you’re there, fire up the BBQ and grill some seasonal delights – perhaps something you caught that day!

While the retreat has three bedrooms - the island's magic number of guests is just two. This island paradise boasts plenty of room for a couple to roam.
", price: 2500, capacity: 4, climate: "Arctic", user: colin, location: "Sans Souci, Georgian Bay", remote_photo_url: "https://www.privateislandsonline.com/uploads/resize/_1620_588cb1ca9969e.jpg-1100-731.jpg")
deepwater.save!

25.times do

  start_date = Date.today - rand(0..260)
  end_date = start_date + rand(0..120)
  island = [katitche, gladden, hawai, maui, fiji, maldives, deepwater].sample
  user = [colin, francisco, guillo, markus].sample

  booking = Booking.new(start_date: start_date, end_date: end_date, island: island, user: user)
  booking.save!

end

desc1 = "he island was amazing with amazing hosts. Peter, Colleen, Al, and Tiffany do an awesome job at making sure you have a memorable experience. Their knowledge of the area and variety of experiences that you have the ability to experience make this place one of a kind: Scuba, snorkeling, sailing, massage, fishing. You must try this island. It is the bar for what an island experience should be."
desc2 = "Luxury facility, cared for by a fabulous world-class staff of four, surrounded by beautiful deep blue waters of the Caribbean. Seriously, paradise!

My family visited Gladden having sailed with Peter and Colleen a few years ago in the BVIs. We didn’t think our yacht charter with Peter and Colleen could be topped, but we were wrong. Our seven days with Peter, Colleen and the adorable couple, Al and Tiffany, was heaven. We experienced Colleen’s culinary masterpieces on the yacht charter, and had the pleasure of enjoying her edible delights three times daily served under a breezy canopy on Gladden. Peter can do anything: captain, scuba master, fishing captain, facility mechanic, storyteller, and cook (under the careful eye of Colleen), all with warmth and charm. Tiffany provided excellent massages anytime of day, as well as facials with natural local products. Al, with his perpetual smile, was present anytime to help with water toys, facilities, or delicious craft cocktails. The fabulous foursome seems to anticipate your needs before asked. They bend over backwards to make sure guests’ needs are met; the house and veranda pool stay spotless, and provisions are always stocked. Colleen’s homemade cookies were replenished daily.

The privacy of this island can’t be overemphasized. The island’s location is far away from everything and everyone. Not to worry if you need a dose of humanity, there is a large boat on the island and Peter knows many hot spots to visit. The staff is present as much or as little as you wish."
desc3 = "I can't emphasize the quality of the staff enough, they made it a 10-star experience - charming, funny, excellent chefs, and easy-going!! I was surprised to discover the property came with all amenities included, as we were expecting additional fees to charter a boat, but upon arrival, discovered the property has its own center console and flat bottom boats for easy transfers to snorkeling or scuba sites, and to bar hop (King Lewey's was our favorite)! We had our golden doodle with us for the trip, the staff was great with him, and all of the island stops were pet friendly. Gladden lives up to their promise of an exclusive and unforgettable experience!! We highly recommend the property and request Peter, Colleen, Al & Tiffany - you won't be disappointed!"
desc4 = "In a world full of hyperbole, Gladden manages to exceed its own stated very high standards. Over the course of nine days we experienced nothing but excellence. The lodging, the food the service and maybe most of all the privacy afforded us made for a perfect vacation. Both of us have travelled the world, stayed in the best hotels and eaten the finest food and drink the world has to offer. In the face of that experience Gladden exceeded them all. Every whim was catered to, every meal met our demands, we had complete privacy. We had almost daily massages, a facial or two, a yoga lesson, classical guitar at supper, meals when and where we wanted both on the private island and elsewhere. I simply can't imagine a better vacation or better staff. I must place emphasis on the fact that when the good folks at gladden they all inclusive, it is, period. From the moment we stepped off the aircraft at the airport in Belize city, we paid for nothing. We were met at the Château [house just doesn't seem to reflect the building] with a wine fridge filled with our favourite varietals, a fridge full of our requested local beer and real champagne, chocolates, snacks, indeed everything you could [and we did) dream up.

I can't leave my review without comments about the Château. This is the most adaptable building I've ever had the pleasure of residing within. Almost every wall could be removed. There were never-ending options of where to sit, where to eat and where to play. The design was perfect for guests seeking solitude and variety. Want a swinging bed? Go upstairs. Want some shade? Pick a chair downstairs. Want some sun? Move to another chair. Want to snorkel walk 30 m. The kitchen was always stocked, the pool was always clean, special requests like a rose every night on the bed? No problem. I could easily write a book about this place but suffice it to note that it's as close to perfection as you're going to find on this planet in this lifetime. I was quite skeptical that the holiday would be everything that it was made out to be. I could not have been more wrong. From our initial communications with Adam and Chris through to our constant interactions before and during our visit with Colleen and Peter and of course with the on-site support and services of Tiffany and Al this is a well thought out and executed holiday -no small print, no exceptions no excuses. At the risk of sounding hyperbolic myself, if you're considering going here, consider your decision already made. I'm as demanding and cantankerous as any luxury traveler and they exceeded my expectations.

"
desc5 = "The amazing guest house -Remarkable/professional staff -Colleen's fabulous cooking -Peter's humor -Tiffany's manicures/pedicures -Al's fire starting/bonfire -Snorkeling on the reef -Sunshine -Overnight Oats for breakfast -Scuba Diving -Sparkling water -Spotted eagle rays -Catching lobster -Bacon-wrapped chicken/couscous -Curry Shrimp and Rice -Paddle boarding -Barracuda-they can fly across the water! -Alberto's driving the boat safely -Peter's expert scuba knowledge -Artichoke Dip for happy hour -Fresh conch appetizers -Al's special drinks -Sunsets on the water -Dancing on the beach -Seeing the nurse sharks -Brain coral -Visiting other islands -Drinks at King Lewey's -Drinks/snacks at Hatchet Caye -Colleen's homemade bread -Chocolate cake"
desc6 = "The property was from a fairytale . A 2 person small secluded Island with the greatest 4 person staff that you could ever ask for that was at your service on a moment's notice from their own Island less then 100 yards away!!! Just an incredible experience. Thank you Colleen,  Peter , Tiffany and Al . You made our stay unforgettable."
desc7 = "My husband and I visited for 4 nights for our belated honeymoon and I cannot say enough fantastic things about our trip. It was the most amazing experience of our lifetime. The best part was the team that works there – Tiffany, and Al, and Hector. Colleen and Peter are two especially wonderful people and really made the trip special. They are genuine caring people, knowledgeable about what they do, and have a good time doing it! We feel like we made new friends for life! The team took the time to plan a special evening for us, with chef Omar from nearby Placencia and musical guitarist. Even though it was raining outside, we had such a good time and Omar’s food was beyond belief. We thank them both for coming out to the island in such dreary weather…and at night!"

30.times do 

  descs = [desc1, desc2, desc3, desc4, desc5, desc6, desc7].sample
  island = [katitche, gladden, hawai, maui, fiji, maldives, deepwater].sample
  user = [colin, francisco, guillo, markus].sample
  review = Review.new(description: descs, rating: rand(1...5), island: island, user: user )
  review.save!

end

puts "Seeding completed."
