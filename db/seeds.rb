# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredients = Ingredient.create([
  { name: 'Peanut' },
  { name: 'Cashew' },
  { name: 'Milk' },
  { name: 'Cheese' }
])

diet_profiles = DietProfile.create([
  { name: 'Nut Allergy', ingredients: Ingredient.all.select { |i| i.name.in? ['Peanut', 'Cashew'] } },
  { name: 'Lactose Intolerant', ingredients: Ingredient.all.select { |i| i.name.in? ['Milk', 'Cheese'] } }
])
