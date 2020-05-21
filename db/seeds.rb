# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

 4.times do
    company = Company.new do |com|
        com.name = Faker::Company.unique.name
        com.description = Faker::Company.catch_phrase
        com.start_date = Faker::Date.backward
        com.country =  Faker::Address.country
    end
    company.save!
end
genre =["Simulator", "Adventure", "Strategy", "Role-playing (RPG)", "Shooter", "Fighting", "Sport"]
4.times do
    game = Game.new do |ga|
        ga.name = Faker::Game.unique.title
        ga.genre = genre[rand(1..genre.size)]
        ga.price = 2343243
        ga.release_date =  Faker::Date.backward
        ga.company_id =  rand(1..4)
    end
    game.save!
end
