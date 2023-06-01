# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.create!(
  trademark: 'Volvo',
  year: '2021',
  km: '100000',
  price: 75,
  user_id: 1
)

Car.create!(
  trademark: 'Opel',
  year: '2022',
  km: '102000',
  price: 90,
  user_id: 1
)

Car.create!(
  trademark: 'Audi',
  year: '2020',
  km: '1012000',
  price: 100,
  user_id: 2
)

Car.create!(
  trademark: 'Peugeot',
  year: '2020',
  km: '10120020',
  price: 100,
  user_id: 2
)

User.create!(
  email: 'toto@aoao.com',
  encrypted_password: '2020',
  name: 'toto1',
  surname: 'toto2'
)

User.create!(
  email: 'toeazeazeza@aoao.com',
  encrypted_password: '2020',
  name: 'touuu',
  surname: "toazeazea'
)
