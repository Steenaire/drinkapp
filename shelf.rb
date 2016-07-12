class Shelf

	def initialize
		@ingredients = []
		@lists = {}
	end

	def ingredients
		return @ingredients
	end

	def add_ingredient(ingredient)
		@ingredients << ingredient
	end

	def add_list(name,list)
		@lists[name] = list
	end

	def display
		family = nil
		puts "Ingredients on your shelf:"
		sorted_ingredients = @ingredients.sort_by {|ingredient| ingredient.family}
		sorted_ingredients.each do |ingredient|
			if family != ingredient.family
				family = ingredient.family
				puts "---------"
				puts "Family: #{ingredient.family}"
			end
			if ingredient.brand == nil
				puts ingredient.name
			else
				puts "#{ingredient.name} (#{ingredient.brand})"
			end
		end
		puts "---------"
	end

	def possible_drinks_no_garnish(drinks)
		possible_drinks = []

		drinks.each do |drink|
			total_count = 0
			have_count = 0
			drink.ingredients.each do |ingredient,amount|
				if ingredient.type != "Garnish"
					total_count += 1
					if @ingredients.include? ingredient
						have_count += 1
					end
				end
			end

			if total_count == have_count
				possible_drinks << drink
			end
		end
		puts "Drinks you can make with the ingredients you have (garnishes ignored):"
		possible_drinks.each do |possible_drink|
			puts possible_drink.name
		end
	end

	def possible_drinks_garnish(drinks)
		possible_drinks = []

		drinks.each do |drink|
			total_count = 0
			have_count = 0
			drink.ingredients.each do |ingredient,amount|
				total_count += 1
				if @ingredients.include? ingredient
					have_count += 1
				end
			end

			if total_count == have_count
				possible_drinks << drink
			end
		end

		puts "Drinks you can make with the ingredients you have (garnishes required):"
		possible_drinks.each do |possible_drink|
			puts possible_drink.name
		end
	end

	def possible_drinks_no_brand(drinks)
		possible_drinks = []

		drinks.each do |drink|
			total_count = 0
			have_count = 0
			drink.ingredients.each do |recipe_ingredient,amount|
				if recipe_ingredient.type != "Garnish"
					total_count += 1
					@ingredients.each do |shelf_ingredient|
						if shelf_ingredient.name == recipe_ingredient.name
							have_count += 1
							break
						end
					end
				end
			end

			if total_count == have_count
				possible_drinks << drink
			end
		end
		puts "Drinks you can make with the ingredients you have (brand substitution enabled):"
		possible_drinks.each do |possible_drink|
			puts possible_drink.name
		end
	end


end