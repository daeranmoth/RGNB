# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
user_test = User.create!(email: 'test@test.com', first_name: 'testman', last_name: 'testmannn', password: '123456')
10.times do
 user = User.new(
     email: Faker::Internet.email,
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     password: "123456"
   )
     user.save!
 end

Experience.destroy_all
10.times do
experience = Experience.new(
     price_per_hour: Faker::Number.decimal(l_digits: 2),
     city: Faker::Address.city,
     description: Faker::Lorem.sentence,
     category: Faker::Hobby.activity,
     user: User.all.sample
   )
     experience.save!
 end
