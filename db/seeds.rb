# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'faker'

User.destroy_all

file2 = URI.open('https://ca.slack-edge.com/T02NE0241-U02T2GDMEMC-ffb6e06fd496-512')
user2 = User.create!(email: 'fabrice@gmail.com', first_name: 'fabrice', last_name: 'Kana', password: '123456', city: 'Berlin', gender: 'masculin', age: 30)
user2.photo.attach(io: file2, filename: 'fabrice.png', content_type: 'image/png')

file3 = URI.open('https://ca.slack-edge.com/T02NE0241-U02T1432ZNV-1f5224b774b8-512')
user3 = User.create!(email: 'martin@gmail.com', first_name: 'martin', last_name: 'Dubois', password: '123456', city: 'Paris', gender: 'masculin', age: 25)
user3.photo.attach(io: file3, filename: 'martin.png', content_type: 'image/png')

file4 = URI.open('https://ca.slack-edge.com/T02NE0241-U02S4915Q8P-d896b97128d9-512')
user4 = User.create!(email: 'celine@gmail.com', first_name: 'celine', last_name: 'condoris', password: '123456', city: 'Tokyo', gender: 'feminin', age: 24)
user4.photo.attach(io: file4, filename: 'celine.png', content_type: 'image/png')

file5 = URI.open('https://m.media-amazon.com/images/M/MV5BMzQ2NmQ3MzYtMmJlYS00MjYyLWIwNWUtN2YwYWZhNTRmNjU5XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg')
user5 = User.create!(email: 'angela@gmail.com', first_name: 'angela', last_name: 'merkel', password: '123456', city: 'Berlin', gender: 'feminin', age: 59)
user5.photo.attach(io: file5, filename: 'angela.png', content_type: 'image/png')

Experience.destroy_all
Experience.create!(price_per_hour: 50, city: 'Paris', description: 'Balade en foret en dehors des sentiers battus', category: 'Randonnée', user: User.all.sample)
Experience.create!(price_per_hour: 61, city: 'Paris', description: 'Visite guidée du quartier Latin', category: 'Visite', user: User.all.sample)
Experience.create!(price_per_hour: 40, city: 'Berlin', description: 'Tir au pigeon', category: 'Tir', user: User.all.sample)
Experience.create!(price_per_hour: 51, city: 'Berlin', description: 'Concert de jazz', category: 'Concert', user: User.all.sample)
Experience.create!(price_per_hour: 60, city: 'Tokyo', description: 'Pêche sous-marine au harpon', category: 'Pêche', user: User.all.sample)
Experience.create!(price_per_hour: 1, city: 'Tokyo', description: 'la premiere regle du fight club est...on ne parle pas du fight club', category: 'Fight club', user: User.all.sample)
Experience.create!(price_per_hour: 70, city: 'Moscou', description: 'Chasse au sanglier à la kalashnikov', category: 'Chasse', user: User.all.sample)
Experience.create!(price_per_hour: 81, city: 'Venise', description: 'Tour en pirogue sur les canaux', category: 'Visite', user: User.all.sample)
Experience.create!(price_per_hour: 80, city: 'New York', description: 'visite guidée de little Italy', category: 'Visite', user: User.all.sample)


# 10.times do
#  user = User.new(
#      email: Faker::Internet.email,
#      first_name: Faker::Name.first_name,
#      last_name: Faker::Name.last_name,
#      password: "123456"
#    )
#      user.save!
#  end

# 10.times do
# experience = Experience.new(
#      price_per_hour: Faker::Number.decimal(l_digits: 2),
#      city: Faker::Address.city,
#      description: Faker::Lorem.sentence,
#      category: Faker::Hobby.activity,
#      user: User.all.sample
#    )
#      experience.save!
#  end
