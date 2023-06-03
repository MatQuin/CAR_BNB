# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(
  email: 'toto@aoao.com',
  encrypted_password: '2020',
  name: 'toto1',
  surname: 'toto2'
)

car1 = Car.new(
  trademark: 'Volvo',
  year: '2021',
  km: '100000',
  price: 75,
  address: '13 villa Gaudelet, Paris'
)
car1.user = user1
car1.save

user2 = User.create!(
  email: 'toeazeazeza@aoao.com',
  encrypted_password: '2020',
  name: 'MisterB',
  surname: 'MisterBagnole'
)

car2 = Car.new(
  trademark: 'BMW',
  year: '2022',
  km: '6000',
  price: 100,
  address: 'Place de la Rébulique, Paris'
)
car2.user = user2
car2.save

user3 = User.create!(
  email: 'toeazeazeazeazccceza@aoao.com',
  encrypted_password: '2020',
  name: 'loueur1',
  surname: 'MisterLocation'
)

car3 = Car.new(
  trademark: 'Opel',
  year: '2022',
  km: '102000',
  price: 90,
  user_id: 1,
  address: 'Place de la Concorde, Paris'
)
car3.user = user3
car3.save

booking1 = Booking.new(start: Date.today, end: Date.today + 2)
booking1.user = user1
booking1.car = car2
booking1.save
