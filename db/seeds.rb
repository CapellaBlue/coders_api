# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

aff = ["Hard Right", "Soft Right", "Centrist", "Soft Left", "Hard Left", "Independent"]

10.times do
  Post.create(
  title: Faker::Superhero.power,
  content: Faker::Lorem.paragraphs,
  author: Faker::Internet.user_name,
  political_affiliation: aff.sample
  likes: 0,
  hardRightLikes: 0,
  softRightLikes: 0,
  centristLikes: 0,
  softLeftLikes: 0,
  hardLeftLikes: 0,
  independentlikes: 0
  )
end

20.times do
  Comment.create(
  text: Faker::StarWars.quote,
  author: Faker::Internet.user_name,
  political_affiliation: aff.sample,
  post_id: Random.rand(1...10)
  )
end

DailyTopic.create(
    content: "Are democratic leadeers just as selfish as dictators in their pursuit of power?"
)

DailyTopic.create(
    content: "Should there be a government?"
)

DailyTopic.create(
    content: "What should be the basic obligations of citizens in democratic societies?"
)

DailyTopic.create(
    content: "What is the purpose of politics?"
)

DailyTopic.create(
    content: "What is the difference between patriotism and nationalism?"
)

DailyTopic.create(
    content: "Is it ethically wrong not to vote?"
)
