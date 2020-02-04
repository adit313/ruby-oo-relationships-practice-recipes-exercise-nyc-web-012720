class Ingredient

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		return @@all
	end

	def self.most_common_allergen
		temp = {}
		Allergy.all.each{|e| 
			temp[e.ingredient] ? temp[e.ingredient] : temp[e.ingredient] = 0
			temp[e.ingredient]+= 1
		}
		temp.sort!{|k, v| v}
		return temp[0][0]
	end
	
end

