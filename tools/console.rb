require_relative '../config/environment.rb'

pizza = Recipe.new('Pizza')
burger = Recipe.new('Burger')
pbj = Recipe.new('pbj')

a = User.new('atty')
b = User.new('batty')
c = User.new('catty')

peanut = Ingredient.new('Peanuts')
tomatoes = Ingredient.new('Tomatoes')
beef = Ingredient.new('Beef')
dough = Ingredient.new('Dough')
lettuce = Ingredient.new('Lettuce')

pizza.add_ingredients([dough, beef, tomatoes])
burger.add_ingredients([dough, beef, tomatoes, lettuce])
pbj.add_ingredients([peanut, dough])

a.add_recipe(pizza, '2018-02-09', 1.3)
a.add_recipe(pbj, '2018-03-09', 3.1)
a.add_recipe(burger, '2018-06-09', 2.8)
b.add_recipe(burger, '2018-10-09', 4.3)
b.add_recipe(pizza, '2018-12-09', 3.2)
c.add_recipe(pizza, '2018-11-09', 3.0)

a.declare_allergy(peanut)

binding.pry
