# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Post.create(
  title: Faker::Superhero.power,
  content: Faker::Lorem.paragraphs,
  author: Faker::Internet.user_name
  )
end

20.times do
  Comment.create(
  text: Faker::StarWars.quote,
  author: Faker::Internet.user_name,
  post_id: Random.rand(1...10)
  )
end
