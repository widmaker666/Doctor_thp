# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all

City.create!(name: "Berlin")
City.create!(name: "Londes")
City.create!(name: "Paris")
City.create!(name: "Pékin")

10.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: 1 )
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: 1 )
end

20.times do
	appointment = Appointment.create!(doctor: find(rand(1..10)), patient: find(rand(1..10)), date: Faker::Date.in_date_period, city: City.find(rand(1..4)))
end