require 'time'

puts 'Cleaning database of drivee...'
Drivee.destroy_all
puts 'Cleaning database of message...'
Message.destroy_all
puts 'Cleaning database of review...'
Review.destroy_all
puts 'Cleaning database of journey...'
Journey.destroy_all
puts 'Cleaning database of activity...'
Activity.destroy_all
puts 'Cleaning database of users...'
User.destroy_all

puts 'generating 5 users with password 123456 '

vincent = User.create!(
  first_name: "Vincent",
  last_name: "Birgand",
  description: "Passionné de kitesurf, je navigue régulièrement et dispose de plusieurs boards et ailes",
  phone: "07 09 09 09 09",
  birth_date: "28 Juillet 1988",
  gender: "man",
  verified: true,
  email: "vincent@eazyride.com",
  password: "123456",
  address: "26 rue Edouard Vaillant, 93140 Bondy, France",
 )

 arthur = User.create!(
  first_name: "Arthur",
  last_name: "d'Achon",
  description: "Passionné de surf, je navigue régulièrement et dispose de plusieurs boards",
  phone: "07 19 09 09 09",
  birth_date: "18 Aout 1988",
  gender: "man",
  verified: true,
  email: "arthur@eazyride.com",
  password: "123456",
  address: "3 rue de la Pompe, 75016 Paris, France"
)

martin = User.create!(
  first_name: "Martin",
  last_name: "Jordan",
  description: "Passionné de char à voile extrême, je vais régulièrement sur le sable afin de me confronter aux éléments et sentir le vent dans mes cheveux",
  phone: "07 29 09 09 09",
  birth_date: "28 Septembre 1988",
  gender: "man",
  verified: true,
  email: "martin@eazyride.com",
  password: "123456",
  address: "6 rue Euryale Dehaynin, 75019 Paris, France"
)
thibaut = User.create!(
  first_name: "Thibaut",
  last_name: "Duroute",
  description: "Passionné de ski de fond, je vais régulièrement sur les pistes et dispose de mon matériels",
  phone: "07 69 69 69 69",
  birth_date: "28 Janvier 1988",
  gender: "man",
  verified: true,
  email: "thibault@eazyride.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France"
)
pauline = User.create!(
  first_name: "Pauline",
  last_name: "Garcin",
  description: "Passionnée d'escalade, je vais régulièrement m'entrainer et dispose de mon matériel",
  phone: "07 10 10 10 10",
  birth_date: "28 Avril 1988",
  gender: "female",
  verified: true,
  email: "pauline@eazyride.com",
  password: "123456",
  address: "1 rue Alphonse Daudet, 75014 Paris, France",
  # photo: 'https://www.climbing.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTQ4NTAxMDM1ODA2MTA2NzY1/o4bcgtff7lkuic44pxu4.jpg'
)
# pauline.remote_photo_url = 'https://www.climbing.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTQ4NTAxMDM1ODA2MTA2NzY1/o4bcgtff7lkuic44pxu4.jpg'
pauline.save
puts "5 users created"

puts "creating 5 activities"

a1 = Activity.create!(category:'Sport de neige', name:'Ski')
a2 = Activity.create!(category:'Sport de neige', name:'Snowboard')
a3 = Activity.create!(category:"Sport d'eau", name:'Surf')
a4 = Activity.create!(category:"Sport d'eau", name:'Kite-Surf')
a5 = Activity.create!(category:"Sport de montagne", name:'Escalade')

puts "5 activities created"

puts "creating 1 journey for each user"
j1 = Journey.new(
  car_type: "Peugeot 5008",
  seat_available: 3,
  description: "Hello les Eazyriders, je propose un voyage au départ de Lyon pour aller skier à la Clusaz le weekend prochain. Je recherche des gens bon esprit, contents de partager un bon moment de ride. A très vite!",
  source_city: "Lyon",
  destination_city: "La Clusaz",
  price: 40,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j1.user_id = arthur.id
j1.activity_id = a1.id
j1.save!

j2 = Journey.new(
  car_type: "Porsche Boxter",
  seat_available: 3,
  description: "Salut la communauté, je vous propose un voyage pour aller snowboarder samedi prochain à Méribel au départ de Lyon. J'ai des barres de toit donc de la place pour le matos volumineux. Bons skieurs voulus, préférence pour le hors-pistes. A très vite!",
  source_city: "Lyon",
  destination_city: "Les Arcs 2000",
  price: 20,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j2.user_id = martin.id
j2.activity_id = a2.id
j2.save!

j3 = Journey.new(
  car_type: "Volkswagen Polo",
  seat_available: 2,
  description: "Hello, je proppose un voyage sur de Paris à Quiberon, n'hésitez pas à me PM pour plus d'infos. A toute!",
  source_city: "Paris",
  destination_city: "Quiberon",
  price: 40,
  accepts_gear: true,
  shares_gear: false,
  lends_gear: false,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j3.user_id = vincent.id
j3.activity_id = a3.id
j3.save!

j4 = Journey.new(
  car_type: "Volkswagen Combi",
  seat_available: 4,
  description: "Voyage Kite-surf à saisir pour le Touquet au départ de Paris, je pars avec trois ailes donc ravi de partager mon matos, et j'ai de la place dans le coffre. A très vite!",
  source_city: "Paris",
  destination_city: "Le Touquet-Paris-Plage",
  price: 24,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j4.user_id = thibaut.id
j4.activity_id = a4.id
j4.save!


j5 = Journey.new(
  car_type: "peugeot 308",
  seat_available: 3,
  description: "Je pars faire de l'escalade à Chamonix au départ de Lyon et j'ai deux places dans ma voiture. Je pars avec mon frère, nous recherchons des passionés d'escalade pour partager un bon moment!",
  source_city: "Lyon",
  destination_city: "Chamonix",
  price: 13,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 21, 9),
  end_time: DateTime.new(2018, 12, 21, 18, 30)
)

j5.user_id = pauline.id
j5.activity_id = a5.id
j5.save!

puts "5 journeys created"
puts "creating 4 reviews for trip 1"

r1 = Review.new(
  rating: 5,
  description: "Super trip, Arthur est très sympa. Je le recommande vivement. A refaire!",
)
r1.reviewee_id = arthur.id
r1.reviewer_id = vincent.id
r1.journey_id = j1.id
r1.save!

r2 = Review.new(
  rating: 1,
  description: "A fuir!!! Arthur est arrivé en retard, et ne s'est même pas excusé. Conduite désastreuse. Fuyez pour votre sécurité!",
)
r2.reviewee_id = arthur.id
r2.reviewer_id = martin.id
r2.journey_id = j1.id
r2.save!

r3 = Review.new(
  rating: 5,
  description: "Top! Le courant est vraiment bien passé avec Martin. Je pense qu'on repartira très vite rider ensemble, trop cool ;) !",
)
r3.reviewee_id = martin.id
r3.reviewer_id = arthur.id
r3.journey_id = j1.id
r3.save!

r4 = Review.new(
  rating: 4,
  description: "Vincent était en retard, ce qui nous a malheureusement fait tomber dans les bouchons. Mais il est très sympa et bon esprit. Je le recommande.",
)
r4.reviewee_id = vincent.id
r4.reviewer_id = arthur.id
r4.journey_id = j1.id
r4.save!

puts " 4 reviews created"
puts " 2 drivees for journey 1"

d1 = Drivee.new(status: "En attente")
d1.journey_id = j1.id
d1.user_id = vincent.id
d1.save!

d2 = Drivee.new(status: "En attente")
d2.journey_id = j1.id
d2.user_id = martin.id
d2.save!

puts " 2 drivees created"
puts "Seed finished!"






