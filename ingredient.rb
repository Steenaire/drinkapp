class Ingredient

	def initialize(name,type,measure,family,brand)
		@name = name
		@type = type
		@family = family
		@measure = measure
		@brand = brand
	end

	def name
		return @name
	end

	def type
		return @type
	end

	def measure
		return @measure
	end

	def family
		return @family
	end

	def brand
		return @brand
	end

end