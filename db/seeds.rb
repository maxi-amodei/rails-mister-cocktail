# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_string = open(url).read
result_array = JSON.parse(drinks_string)
# result_array["drinks"][1]["strIngredient1"]
puts "creating ingredients"
Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")

puts "creating more ingredients"
result_array["drinks"].each do |hash|
  Ingredient.create!(name: hash["strIngredient1"])
end
puts "Finished"