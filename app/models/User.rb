class User

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		return @@all
	end

	def recipes
		RecipeCard.all.select{|e| e.user == self}
	end

	def add_recipe(recipe, date, rating)
		RecipeCard.new(date, rating, self, recipe)
	end

	def declare_allergy(ingredient)
		Allergy.new(ingredient, self)
	end

	def allergens
		Allergy.all.select { |e| e.user = self}
	end

	def top_three_recipes
		result = self.recipes.sort_by{|e| e.rating}
		return result.first(3)
	end

	def most_recent_recipe
		result = self.recipes.sort_by{|e| e.date}
		return result[0]
	end
end
