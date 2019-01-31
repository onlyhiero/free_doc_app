# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
	city = City.create!(name: Faker::Address.city, postal_code: Faker::Address.zip_code)
end

10.times do
	speciality = Speciality.create!(name: Faker::Job.field)
	end

10.times do
	doctor = Doctor.create!(first_name: Faker::Artist.name, last_name: Faker::Coffee.variety, city_id: City.ids.sample)
end

10.times do
	patient = Patient.create!(first_name: Faker::Ancient.god,last_name: Faker::Color.color_name, city_id: City.ids.sample)
end

10.times do
	appointment = Appointment.create!(date: Faker::Date.forward(30), patient_id: Patient.ids.sample, doctor_id: Doctor.ids.sample, city_id: City.ids.sample)
end

10.times do
	special_doctor = SpecialDoctor.create!(doctor_id: Doctor.ids.sample, speciality_id: Speciality.ids.sample)
end