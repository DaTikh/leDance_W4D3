# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Superhero.power, postal_code: Faker::Number.number(5))
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

30.times do
  appointment = Appointment.create(date: Faker::Date.forward(15), doctor_id: rand(1..10), patient_id: rand(1..10))
end
