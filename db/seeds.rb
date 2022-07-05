# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Reset les données de seed
Article.destroy_all

5.times do
  Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs.join("\n")
  )
end

5.times do
  Article.create!(
    title: Faker::Game.title,
    content: Faker::Lorem.paragraphs.join("\n")
  )
end

5.times do
  Article.create!(
    title: Faker::TvShows::Buffy.quote,
    content: Faker::Lorem.paragraphs.join("\n")
  )
end


