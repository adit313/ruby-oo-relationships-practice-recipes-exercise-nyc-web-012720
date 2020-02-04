class Recipe

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		return @@all
	end

	def users
		RecipeCard.all.select{|e| e.recipe == self}
	end

	def self.most_popular
		temp = {}
		RecipeCard.all.each{|e| 
			temp[e.recipe] ? temp[e.recipe] : temp[e.recipe] = 0
			temp[e.recipe] += 1
		}
		result = temp.sort_by{|k,v| v}
		return result[0][0].name
	end

	def recipeingredients
		RecipeIngredient.all.select{|e| e.recipe == self}
	end

	def ingredients
		self.recipeingredients.map{|e| e.ingredient}
	end

	def allergens
		return Allergy.all_allergens & ingredients
	end

	def add_ingredients(ingredient_list)
		ingredient_list.length == 1 ? RecipeIngredient.new(ingredient_list, self) : ingredient_list.each{|e| RecipeIngredient.new(e, self)}
	end
end
