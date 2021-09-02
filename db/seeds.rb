# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.destroy_all
Pet.destroy_all

Shelter.create(location: 'New York', name: 'HoardersRUs', capacity:20)

Pet.create(breed: 'poodle', name: 'Tara', age: 5, weight: 20, gps_chip: true, shelter_id: 1)

