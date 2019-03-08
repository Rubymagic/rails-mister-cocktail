# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "DESTROY ALL"
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts "Creating"
spritz = Cocktail.new(name: "spritz")
spritz.save!

Ingredient.create(name: "aperol")
Ingredient.create(name: "vino")
Ingredient.create(name: "orange")

Dose.create(description: "bla bla", ingredient: Ingredient.all.sample, cocktail: spritz)

puts "done"
