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

puts 'generating 10 users with password 123456 '

u1_vincent = User.create!(
  first_name: "Vincent",
  last_name: "Birgand",
  description: "Passionné de kitesurf, je navigue régulièrement et dispose de plusieurs boards et ailes. J'aime aussi faire du ski quand je suis en Rhône Alpes. Je dispose de mon matériel à Lyon.",
  phone: "07 09 09 09 09",
  birth_date: "28 Juillet 1988",
  gender: "man",
  verified: true,
  email: "vincent@eazyride.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544520456/moi.jpg'
 )
u1_vincent.save!

 u2_arthur = User.create!(
  first_name: "Arthur",
  last_name: "d'Achon",
  description: "Passionné de ski, j'aime partager des sessions en Haute-Savoie. Je peux aussi prêter du matériel si besoin.",
  phone: "07 19 09 09 09",
  birth_date: "18 Aout 1988",
  gender: "man",
  verified: true,
  email: "arthur@eazyride.com",
  password: "123456",
  address: "41 Quai de Pierre-Scize, 69009 Lyon",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544522064/arthur.jpg'
)
u2_arthur.save!

u3_martin = User.create!(
  first_name: "Martin",
  last_name: "Jordan",
  description: "Passionné de char à voile extrême, je vais régulièrement sur le sable afin de me confronter aux éléments et sentir le vent dans mes cheveux. Je suis aussi un grand passionné de ski et aime en faire lorsque je suis sur Lyon",
  phone: "07 29 09 09 09",
  birth_date: "12 Septembre 1992",
  gender: "man",
  verified: true,
  email: "martin@eazyride.com",
  password: "123456",
  address: "6 rue Euryale Dehaynin, 75019 Paris, France",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544520432/tinmar.jpg'
)
u3_martin.save!

u4_thibaut = User.create!(
  first_name: "Thibaut",
  last_name: "Duroute",
  description: "Passionné de ski de fond, je vais régulièrement sur les pistes et dispose de mon matériels",
  phone: "07 69 69 69 69",
  birth_date: "28 Janvier 1988",
  gender: "man",
  verified: true,
  email: "thibault@eazyride.com",
  password: "123456",
  address: "18 Rue Neuve, 69002 Lyon",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544520391/thibaut.jpg'
)
u4_thibaut.save!

u5_pauline = User.create!(
  first_name: "Pauline",
  last_name: "Garcin",
  description: "Passionnée d'escalade, je vais régulièrement m'entrainer et dispose de mon matériel",
  phone: "07 10 10 10 10",
  birth_date: "28 Février 1994",
  gender: "female",
  verified: true,
  email: "pauline@eazyride.com",
  password: "123456",
  address: "1 rue Alphonse Daudet, 75014 Paris, France",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544435956/Pauline_Linkedin.jpg'
)
  u5_pauline.save!
# pauline.remote_photo_url = 'https://www.climbing.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTQ4NTAxMDM1ODA2MTA2NzY1/o4bcgtff7lkuic44pxu4.jpg'
# pauline.save

u6_jean = User.create!(
  first_name: "Jean",
  last_name: "Charles",
  description: "Passionné de plongée, j'aime aller découvrir de nouveaux spots avec d'autres personnes.",
  phone: "07 09 19 09 09",
  birth_date: "28 Juillet 1992",
  gender: "man",
  verified: true,
  email: "jean@eazyride.com",
  password: "123456",
  address: "6 Place Sainte-Anne, 35000 Rennes",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544520243/jc.jpg'
 )
u6_jean.save!

u7_peichan = User.create!(
  first_name: "Peichan",
  last_name: "Lee",
  description: "Très grosse rideuse, j'aime les sensations forte qui permettent de m'envoler...",
  phone: "07 09 29 09 09",
  birth_date: "28 Juillet 1992",
  gender: "man",
  verified: true,
  email: "peichan@eazyride.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544520401/peishan.png'
 )
u7_peichan.save!

u8_paul = User.create!(
  first_name: "Paul",
  last_name: "Cotché",
  description: "Depuis tout petit, je fais du surf dès que je peux et je suis donc très heureux d'avoir découvert Eazyride. Cela m'a permis de rencontrer plein de gens qui ont la même passion que moi.",
  phone: "07 09 39 09 09",
  birth_date: "17 Juillet 1976",
  gender: "man",
  verified: true,
  email: "paul@eazyride.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544520412/paul.png'
 )
u8_paul.save!

u9_patrick = User.create!(
  first_name: "Patrick",
  last_name: "Fontaine",
  description: "Passionné de kitesurf, je navigue régulièrement et dispose de plusieurs boards et ailes.",
  phone: "07 09 49 09 09",
  birth_date: "28 Juillet 1992",
  gender: "man",
  verified: true,
  email: "patrick@eazyride.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544520423/patrick.jpg'
 )
u9_patrick.save!

u10_julien = User.create!(
  first_name: "Julien",
  last_name: "Dupont",
  description: "Grand fan de kitesurf, je navigue régulièrement et dispose de plusieurs boards et ailes. J'aime découvrir de nouveaux spots avec d'autres rider.",
  phone: "07 09 59 09 09",
  birth_date: "28 Juillet 1992",
  gender: "man",
  verified: true,
  email: "julien@eazyride.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544522746/julien.jpg'
 )
u10_julien.save!

u11_jules = User.create!(
  first_name: "Jules",
  last_name: "Boiteux",
  description: "Originaire de la région, je fais du ski depuis mes 8ans. J'aime partagé ma passion avec d'autres personnes. Motivé pour faire un peu de hors piste si tout le monde est chaud ;)",
  phone: "07 09 79 09 09",
  birth_date: "10 Juillet 1992",
  gender: "man",
  verified: true,
  email: "jules@eazyride.com",
  password: "123456",
  address: "25 Rue de l'Arbre Sec, 69001 Lyon",
  remote_photo_url: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544524674/jules.jpg'
 )
u11_jules.save!

puts "10 users created"

puts "creating 12 activities"

a1 = Activity.create!(category:"Plongée", name:'Apnée', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544539634/apne%CC%81e.jpg')
a2 = Activity.create!(category:"Sport d'eau", name:'Bodyboard', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544539993/bodyboard.jpg')
a3 = Activity.create!(category:"Sport de montagne", name:'Escalade', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544539144/escalade.jpg')
a4 = Activity.create!(category:"Golf", name:'Golf', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544540808/golf2.jpg')
a5 = Activity.create!(category:"Sport d'eau", name:'Kite-Surf', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544544026/kite_surf.jpg')
a6 = Activity.create!(category:"Sport d'eau", name:'Paddle', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544541219/paddle.jpg')
a7 = Activity.create!(category:"Sport de montagne", name:'Parapente', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544541305/parapente.jpg')
a8 = Activity.create!(category:"Sport de montagne", name:'Parachutisme', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544541443/parachute.jpg')
a9 = Activity.create!(category:"Sport d'eau", name:'Planche à voile', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544541608/planche_a%CC%80_voile.jpg')
a10 = Activity.create!(category:"Plongée", name:'Plongée', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544539440/plonge%CC%81e.jpg')
a11 = Activity.create!(category:"Randonnée", name:'Randonnée', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544541733/randonne%CC%81e.jpg')
a12 = Activity.create!(category:"Running", name:'Running', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544541941/runnning.jpg')
a13 = Activity.create!(category:'Sport de neige', name:'Ski', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544450679/sport_de_neige.jpg')
a14 = Activity.create!(category:'Sport de neige', name:'Snowboard', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544544172/snowboard.jpg')
a15 = Activity.create!(category:"Sport d'eau", name:'Surf', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544450832/ocean.jpg')
a16 = Activity.create!(category:"Vélo", name:'Vélo', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544542411/cycling.jpg')
a17 = Activity.create!(category:"Vélo", name:'VTT', photo: 'https://res.cloudinary.com/dscu7dmwa/image/upload/v1544542325/VTT.jpg')






puts "12 activities created"

puts "creating 1 journey for each user"
j1 = Journey.new(
  car_type: "Peugeot 5008",
  seat_available: 3,
  description: "Hello les Eazyriders, je propose un voyage au départ de Lyon pour aller skier à la Clusaz. Je recherche des gens bon esprit, contents de partager un bon moment de ride. A très vite!",
  source_city: "Lyon, Auvergne-Rhône-Alpes, France",
  destination_city: "La Clusaz",
  price: 32,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j1.user_id = u2_arthur.id
j1.activity_id = a13.id
j1.save!

j2 = Journey.new(
  car_type: "Porsche Boxter",
  seat_available: 1,
  description: "Salut la communauté, je vous propose un voyage pour aller ski samedi prochain à Méribel au départ de Lyon. J'ai des barres de toit donc de la place pour le matos volumineux. Bons skieurs voulus, préférence pour le hors-pistes. A très vite!",
  source_city: "Lyon, Auvergne-Rhône-Alpes, France",
  destination_city: "Les Arcs 2000",
  price: 30,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j2.user_id = u5_pauline.id
j2.activity_id = a13.id
j2.save!

j3 = Journey.new(
  car_type: "Volkswagen Polo",
  seat_available: 2,
  description: "Hello, je proppose un voyage Lyon à la station St Hugues Les Egaux, n'hésitez pas à me PM pour plus d'infos. A toute!",
  source_city: "Lyon, Auvergne-Rhône-Alpes, France",
  destination_city: "Valfréjus",
  price: 40,
  accepts_gear: true,
  shares_gear: false,
  lends_gear: false,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j3.user_id = u3_martin.id
j3.activity_id = a13.id
j3.save!

j4 = Journey.new(
  car_type: "Volkswagen Combi",
  seat_available: 4,
  description: "Voyage ski à saisir pour Tignes au départ de Lyon, je pars avec trois paires de ski donc ravi de partager mon matos, et j'ai de la place dans le coffre. A très vite!",
  source_city: "Lyon, Auvergne-Rhône-Alpes, France",
  destination_city: "Tignes",
  price: 34,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j4.user_id = u4_thibaut.id
j4.activity_id = a13.id
j4.save!


j5 = Journey.new(
  car_type: "peugeot 308",
  seat_available: 3,
  description: "Je pars faire de l'escalade à Chamonix au départ de Lyon et j'ai deux places dans ma voiture. Je pars avec mon frère, nous recherchons des passionés d'escalade pour partager un bon moment!",
  source_city: "Lyon, Auvergne-Rhône-Alpes, France",
  destination_city: "Chamonix",
  price: 23,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 21, 9),
  end_time: DateTime.new(2018, 12, 21, 18, 30)
)

j5.user_id = u5_pauline.id
j5.activity_id = a3.id
j5.save!

j6 = Journey.new(
  car_type: "clio 2",
  seat_available: 3,
  description: "Je pars faire de la plongée à Etel au départ de Rennes et j'ai deux places dans ma voiture. Je pars avec mon frère, nous recherchons des passionés de plongée pour partager un bon moment!. Nous plongerons avec le club d'Etel.",
  source_city: "Rennes, Bretagne, France",
  destination_city: "Étel, Bretagne, France",
  price: 13,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 21, 9),
  end_time: DateTime.new(2018, 12, 21, 18, 30)
)

j6.user_id = u6_jean.id
j6.activity_id = a10.id
j6.save!

j7 = Journey.new(
  car_type: "Audi RS4",
  seat_available: 3,
  description: "Salut la communauté, je vous propose un voyage pour aller surfer samedi prochain à Biarritz au départ de Bordeaux. J'ai des barres de toit donc de la place pour le matos volumineux. A très vite!",
  source_city: "Bordeaux, Nouvelle-Aquitaine, France",
  destination_city: "Biarritz, Nouvelle-Aquitaine, France",
  price: 20,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 15, 9),
  end_time: DateTime.new(2018, 12, 15, 18, 30)
)

j7.user_id = u7_peichan.id
j7.activity_id = a15.id
j7.save!

j8 = Journey.new(
  car_type: "Renault Laguna",
  seat_available: 2,
  description: "Hello, je proppose un voyage sur de Paris à Quiberon, n'hésitez pas à me PM pour plus d'infos. A toute!",
  source_city: "Paris 14e Arrondissement, Paris, Île-de-France, France",
  destination_city: "Quiberon, Bretagne, France",
  price: 50,
  accepts_gear: true,
  shares_gear: false,
  lends_gear: false,
  start_time: DateTime.new(2018, 12, 20, 5),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j8.user_id = u8_paul.id
j8.activity_id = a15.id
j8.save!

j9 = Journey.new(
  car_type: "Volkswagen Combi",
  seat_available: 4,
  description: "Voyage Kite-surf à saisir pour le Touquet au départ de Paris, je pars avec trois ailes donc ravi de partager mon matos, et j'ai de la place dans le coffre. A très vite!",
  source_city: "Paris 5e Arrondissement, Paris, Île-de-France, France",
  destination_city: "Le Touquet-Paris-Plage",
  price: 54,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 9),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j9.user_id = u9_patrick.id
j9.activity_id = a5.id
j9.save!

j10 = Journey.new(
  car_type: "Renault Scenic",
  seat_available: 4,
  description: "Voyage Kite-surf à saisir pour le Kerhilio au départ de Paris, je pars avec 2 ailes donc ravi de partager mon matos, et j'ai de la place dans le coffre. A très vite!",
  source_city: "Paris 4e Arrondissement, Paris, Île-de-France, France",
  destination_city: "Kerhilio",
  price: 60,
  accepts_gear: true,
  shares_gear: true,
  lends_gear: true,
  start_time: DateTime.new(2018, 12, 20, 6),
  end_time: DateTime.new(2018, 12, 20, 18, 30)
)

j10.user_id = u10_julien.id
j10.activity_id = a5.id
j10.save!








puts "5 journeys created"
puts "creating 4 reviews for trip 1"

r1 = Review.new(
  rating: 5,
  description: "Super trip, Arthur est très sympa. Je le recommande vivement. A refaire!",
)
r1.reviewee_id = u2_arthur.id
r1.reviewer_id = u10_julien.id
r1.journey_id = j1.id
r1.save!

r2 = Review.new(
  rating: 4,
  description: "Merci Athur pour cette superbe session. Ce fut un réel plaisir de passer cette journée avec toi.",
)
r2.reviewee_id = u2_arthur.id
r2.reviewer_id = u3_martin.id
r2.journey_id = j1.id
r2.save!

r3 = Review.new(
  rating: 5,
  description: "Top! Le courant est vraiment bien passé avec Martin. Je pense qu'on repartira très vite rider ensemble, trop cool ;) !",
)
r3.reviewee_id = u3_martin.id
r3.reviewer_id = u2_arthur.id
r3.journey_id = j1.id
r3.save!

r4 = Review.new(
  rating: 4,
  description: "Peichan est vraiment une bombe en ski. ce fut un plaisir de rider ensemble",
)
r4.reviewee_id = u7_peichan.id
r4.reviewer_id = u11_jules.id
r4.journey_id = j1.id
r4.save!

puts " 4 reviews created"
puts " 2 drivees for journey 1"

d1 = Drivee.new(status: "En attente")
d1.journey_id = j1.id
d1.user_id = u11_jules.id
d1.save!

d2 = Drivee.new(status: "En attente")
d2.journey_id = j1.id
d2.user_id = u7_peichan.id
d2.save!

puts " 2 drivees created"
puts "Seed finished!"






