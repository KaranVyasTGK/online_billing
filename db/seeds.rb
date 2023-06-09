# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


5.times do
  Client.create!(name: Faker::Name.name, address: Faker::Address.full_address, email: Faker::Internet.safe_email, phone: Faker::PhoneNumber.cell_phone, dob: Faker::Date.birthday(min_age: 18, max_age: 65))
end