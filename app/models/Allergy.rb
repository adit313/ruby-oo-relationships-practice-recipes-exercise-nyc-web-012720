class Allergy

	@@all = []

	attr_accessor :ingredient, :user

	def initialize(ingredient, user)
		@ingredient = ingredient
		@user = user
		@@all << self
	end

	def self.all
		return @@all
	end

	def self.all_allergens
		ingredients = []
		@@all.each {|e| ingredients << e.ingredient}
		return ingredients
	end


end
