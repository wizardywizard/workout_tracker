# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

exercises = [
    {name: "Push-ups", weights: "false"},
    {name: "sit-ups", weights: "false"},
    {name: "squats", weights: "true"},
    {name: "arm curls", weights: "true"}
]

exercises.each do |hash|
    Exercise.find_or_create_by(hash)
end