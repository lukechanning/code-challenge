require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |i|
    Company.create!(
        name: Faker::Company.name,
        short_description: Faker::HitchhikersGuideToTheGalaxy.quote,
        city: Faker::HitchhikersGuideToTheGalaxy.planet,
        state: Faker::Address.state,
        founded: Faker::Date.between(2.days.ago, Date.today)
    )
end 

40.times do |i|
    Founder.create!(
        name: Faker::HitchhikersGuideToTheGalaxy.character,
        title: Faker::Company.profession.titleize,
        company_id: rand(1..19)
    )
end 
