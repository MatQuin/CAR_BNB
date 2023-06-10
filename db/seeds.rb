# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Car.destroy_all
User.destroy_all
Booking.destroy_all

user1 = User.create!(
  email: 'auroraemu@gmail.com',
  password: 'carBNB',
  name: 'aurora',
  surname: 'mu'
)

car1 = Car.new(
  trademark: 'Audi RS5 Cabriolet',
  year: '2021',
  km: '1000',
  price: 150,
  address: '13 villa Gaudelet, Paris'
)
  file = URI.open("https://www.turbo.fr/sites/default/files/migration/test/field_image/000000005705792.jpg")
  car1.photo.attach(io: file, filename: "audirs5.png", content_type: "image/jpg")

car1.user = user1
car1.save

user2 = User.create!(
  email: 'toeazeazeza@aoao.com',
  password: '202020',
  name: 'MisterB',
  surname: 'MisterBagnole'
)

car2 = Car.new(
  trademark: 'BMW M3',
  year: '2022',
  km: '6000',
  price: 100,
  address: 'Place de la Rébulique, Paris'
)
file = URI.open("https://www.turbo.fr/sites/default/files/2023-01/BMW%20M3%20CS.jpg")
  car2.photo.attach(io: file, filename: "bmwm3.jpgr", content_type: "image/jpg")

car2.user = user2
car2.save

user3 = User.create!(
  email: 'toeazeazeazeazccceza@aoao.com',
  password: '202020',
  name: 'loueur1',
  surname: 'MisterLocation'
)

car3 = Car.new(
  trademark: 'Mercedes SLR',
  year: '2022',
  km: '102000',
  price: 90,
  user_id: 1,
  address: 'Place de la Concorde, Paris'
)

file = URI.open("https://www.reezocar.com/raw/autoscout24api.eu/RZCATSEU8C9181D45AFF/MERCEDES-BENZ-CLASSE-SLR-00.jpg")
  car3.photo.attach(io: file, filename: "bmwm3.jpgr", content_type: "image/jpg")


car3.user = user3
car3.save

booking1 = Booking.new(start: Date.today, end: Date.today + 2)
booking1.user = user1
booking1.car = car2
booking1.save
