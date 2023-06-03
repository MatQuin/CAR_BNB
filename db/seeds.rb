# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  name: 'John4',
  email:'john4@hotmail.com',
  password: '123456',
  password_confirmation: '123456',
)

User.create!(
  name: 'John5',
  email:'john5@hotmail.com',
  password: '123456',
  password_confirmation: '123456',
)

User.create!(
  name: 'John6',
  email:'john6@hotmail.com',
  password: '123456',
  password_confirmation: '123456',
)

Car.create!(
  trademark: 'Volvo',
  year: 2021,
  km: 100000,
  price: 75,
  user_id: 1
)

Car.create!(
  trademark: 'Opel',
  year: 2022,
  km: 102000,
  price: 90,
  user_id: 1
)

Car.create!(
  trademark: 'Audi',
  year: 2020,
  km: 1012000,
  price: 100,
  user_id: 2
)

Car.create!(
  trademark: 'Peugeot',
  year: 2020,
  km: 10120020,
  price: 100,
  user_id: 2
)


Booking.create!(
  car_id: 1,
  user_id: 3,
)
