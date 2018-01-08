# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
  Blog.create!(
    title: Faker::HarryPotter.character,
    body: Faker::HarryPotter.quote 
  )
end


5.times do |skill|
  Skill.create!(
    title: Faker::Beer.name,
    percent_utilized: Faker::Number.between(1, 99)
  )
end

10.times do |portfolio|
  Portfolio.create!(
    title: Faker::StarWars.vehicle,
    subtitle: Faker::StarWars.specie,
    body: Faker::StarWars.quote,
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end
