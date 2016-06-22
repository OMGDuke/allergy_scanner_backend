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
  { name: 'Brazil Nut' },
  { name: 'Pine Nut' },
  { name: 'Pistachio' },
  { name: 'Macadamia' },
  { name: 'Milk' },
  { name: 'Cream' }
  { name: 'Ricotta' },
  { name: 'Butter' },
  { name: 'Fromage Frais' },
  { name: 'Kefir' },
  { name: 'Yoghurt' },
  { name: 'Ice Cream' },
  { name: 'Quark' },
  { name: 'Philadelphia' },
  { name: 'Cheese' },
  { name: 'Mozzarella' },
  { name: 'Bread' },
  { name: 'Beer' },
  { name: 'Couscous' },
  { name: 'Soy Sauce' },
  { name: 'Muffin' },
  { name: 'Pancake' },
  { name: 'Croissant' },
  { name: 'Cereal' },
])

diet_profiles = DietProfile.create([
  { name: 'Nut Allergy', ingredients: Ingredient.all.select { |i| i.name.in? ['Peanut', 'Pecan', 
    'Cashew', 'Walnut', 'Chestnut', 'Almond', 'Brazil Nut', 'Pine Nut', 'Pistachio', 'Macadamia'] } },

  { name: 'Lactose Intolerance', ingredients: Ingredient.all.select { |i| i.name.in? [
    'Milk', 'Cream', 'Ricotta', 'Butter', 'Fromage Frais', 'Kefir', 'Yoghurt', 'Ice Cream', 
    'Quark', 'Philadelphia', 'Cheese', 'Mozzarella'] } },

  { name: 'Gluten Intolerance', ingredients: Ingredient.all.select { |i| i.name.in? [
    'Bread', 'Beer', 'Couscous', 'Soy Sauce', 'Muffin', 'Pancake', 'Croissant', 'Cereal'] } }
])
