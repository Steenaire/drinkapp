class Drink

	def initialize(name,ingredients,instructions,family)
		@name = name
		@ingredients = ingredients
		@instructions = instructions
	end

	def ingredients
		return @ingredients
	end

	def ingredients_oz
		@ingredients.each do |ingredient, amount|
			if ingredient.measure == "Volume"
				puts "#{amount} oz\t#{ingredient.name}"
			else
				puts "#{amount}\t#{ingredient.name}"
			end
		end
	end

	def ingredients_ml
		oz_us_to_ml = 29.5735
		@ingredients.each do |ingredient, amount|
			if ingredient.measure == "Volume"
				puts "#{(amount*oz_us_to_ml).round} mL\t#{ingredient.name}"
			else
				puts "#{amount}\t#{ingredient.name}"
			end
		end
	end

	def name
		return @name
	end

	def instructions
		return @instructions
	end

	def add_ingredient(ingredient,measure)
		@ingredients[ingredient] = measure
	end

	def remove_ingredient(ingredient)
		@ingredients.delete(ingredient)
	end

end