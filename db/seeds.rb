# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database of users...'
User.destroy_all
puts 'Cleaning database of journey...'
Journey.destroy_all
puts 'Cleaning database of message...'
Message.destroy_all
puts 'Cleaning database of review...'
Review.destroy_all
puts 'Cleaning database of drivee...'
Drivee.destroy_all
puts 'Cleaning database of activity...'
Activity.destroy_all

puts 'generating the best users with password 123456 '
vincent = User.create!(
  first_name: "vincent"
  last_name: "birgand"
  description: "Passionné de kitesurf, je navigue régulièrement et dispose de plusieurs boards et ailes"
  phone: "07 09 09 09 09"
  birth_date: "28 Juillet 1988"
  gender: "man"
  verified: "true"
  email: "vincent@eazyride.com",
  password: "123456",
  address: "26 rue Edouard Vaillant, 93140 Bondy, France"



 )
 arthur = User.create!(
  first_name: "arthur"
  last_name: "d'achon"
  description: "Passionné de surf, je navigue régulièrement et dispose de plusieurs boards"
  phone: "07 19 09 09 09"
  birth_date: "18 Aout 1988"
  gender: "man"
  verified: true
  email: "arthur@eazyride.com",
  password: "123456",
  address: "3 rue de la Pompe, 75016 Paris, France"
)
martin = User.create!(
  first_name: "martin"
  last_name: "jordan"
  description: "Passionné de ski, je vais régulièrement sur les pistes et dispose de mon matériels"
  phone: "07 29 09 09 09"
  birth_date: "28 Septembre 1988"
  gender: "man"
  verified: true
  email: "martin@eazyride.com",
  password: "123456",
  address: "6 rue Euryale Dehaynin, 75019 Paris, France"
)

thibaut = User.create!(
  first_name: "thibaut"
  last_name: "dutrou"
  description: "Passionné de ski de fond, je vais régulièrement sur les pistes et dispose de mon matériels"
  phone: "07 69 69 69 69"
  birth_date: "28 Janvier 1988"
  gender: "man"
  verified: true
  email: "thibault@eazyride.com",
  password: "123456",
  address: "16 villa Gaudelet, 75011 Paris, France"
)

pauline = User.create!(
  first_name: "pauline"
  last_name: "garcin"
  description: "Passionné d'escalade, je vais régulièrement m'entrainer et dispose de mon matériels"
  phone: "07 10 10 10 10"
  birth_date: "28 Avril 1988"
  gender: "man"
  verified: true
  email: "pauline@eazyride.com",
  password: "123456",
  address: "1 rue Alphonse Daudet, 75014 Paris, France"
)

puts "5 users created"

puts "creating activities"

a1 = Activity.create(category:'sports de montagne', name:'Ski')
a2 = Activity.create(category:'sports de montagne', name:'Snowboard')
a3 = Activity.create(category:'sports de mer', name:'Surf')
a4 = Activity.create(category:'sports de mer', name:'Kite-surf')


puts "creating 1 journey for each user"

j1 = Journey.new(
  car_type: "polo",
  seat_available: "2"
  description: "propose voyage",
  source_city: "Paris"
  destination_city: "côte sauvage, quiberon"
  price: "40"
  accepts_gear: true
  shares_gear: true
  lends_gear: true
)
j1.user_id = vincent.id
j1.activity_id = a3.id

j1.save!

j2 = Journey.new(
  car_type: "peugeot 308",
  seat_available: "3"
  description: "propose voyage",
  source_city: "lyon"
  destination_city: "annecy"
  price: "40"
  accepts_gear: true
  shares_gear: true
  lends_gear: true
)
j2.user_id = arthur.id
j2.activity_id = a2.id

j2.save!









