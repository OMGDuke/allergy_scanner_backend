# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredients = Ingredient.create([
  { name: 'Peanut' },
  { name: 'Pecan' },
  { name: 'Cashew' },
  { name: 'Walnut' },
  { name: 'Chestnut' },
  { name: 'Almond' },
  { name: 'Brazil' },
  { name: 'Pine' },
  { name: 'Pistachio' },
  { name: 'Macadamia' },

  { name: 'Lactose' },
  { name: 'Milk' },
  { name: 'Whey' },

  { name: 'Gluten' },
  { name: 'Wheat' },
  { name: 'Barley' },
  { name: 'Oats' },

  { name: 'Pork' },
  { name: 'Chicken' },
  { name: 'Beef' },
  { name: 'Ox' },
  { name: 'Turkey' },
  { name: 'Goat' },
  { name: 'Lamb' },
  { name: 'Pigeon' },
  { name: 'Pheasant' }
])

diet_profiles = DietProfile.create([
  { name: 'Nut Allergy', ingredients: Ingredient.all.select { |i| i.name.in? ['Peanut', 'Pecan', 
    'Cashew', 'Walnut', 'Chestnut', 'Almond', 'Brazil', 'Pine', 'Pistachio', 'Macadamia'] } },

  { name: 'Lactose Intolerance', ingredients: Ingredient.all.select { |i| i.name.in? [
    'Lactose', 'Milk', 'Whey'] } },

  { name: 'Gluten Intolerance', ingredients: Ingredient.all.select { |i| i.name.in? [
    'Gluten', 'Wheat', 'Barley', 'Oats'] } },

  { name: 'Vegetarian', ingredients: Ingredient.all.select { |i| i.name.in? [
    'Pork', 'Chicken', 'Beef', 'Ox', 'Turkey', 'Goat', 'Lamb', 'Pigeon', 'Pheasant'] } }    
])
