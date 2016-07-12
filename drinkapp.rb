require_relative "drink.rb"
require_relative "ingredient.rb"
require_relative "shelf.rb"

gin = Ingredient.new("Gin","Main","Volume","Distilled Liquor",nil)
vermouth = Ingredient.new("Dry Vermouth","Main","Volume","Fortified Wine",nil)
vodka = Ingredient.new("Vodka","Main","Volume","Distilled Liquor",nil)
olive = Ingredient.new("Olive","Garnish","Count","Fruit",nil)
rye = Ingredient.new("Rye Whiskey","Main","Volume","Whiskey",nil)
svermouth = Ingredient.new("Sweet Vermouth","Main","Volume","Fortified Wine",nil)
bourbon = Ingredient.new("Bourbon","Main","Volume","Whiskey",nil)
cherry = Ingredient.new("Cherry","Garnish","Count","Fruit",nil)
hendricks = Ingredient.new("Gin","Main","Volume","Distilled Liquor","Hendrick's")


drinks = [
	Drink.new("Martini",{ gin => 1 , vermouth => 0.5 , olive => 1},"Stir gin and vermouth together with ice\nServe in a chilled glass, with olive as garnish","Martini"),
 	Drink.new("Vodka Martini",{ vodka => 1 , vermouth => 0.5 , olive => 1},"Stir gin and vermouth together with ice\nServe in a chilled glass, with olive as garnish","Martini"),
 	Drink.new("Manhattan",{ rye => 2 , svermouth => 1 , cherry => 1},"Shake rye and vermouth together with ice\nServe in a chilled class, with cherry as garnish","Manhattan"),
 	Drink.new("Hendrick's Martini",{ hendricks => 1 , vermouth => 0.5 , olive => 1},"Stir gin and vermouth with ice\nServe in a chilled glass, with olive as garnish","Martini")
 ]

shelf = Shelf.new

shelf.add_ingredient(gin)
shelf.add_ingredient(vermouth)
shelf.add_ingredient(vodka)
shelf.add_ingredient(rye)
shelf.add_ingredient(svermouth)
shelf.add_ingredient(bourbon)
#shelf.add_ingredient(hendricks)
shelf.add_ingredient(cherry)

shelf.display

shelf.possible_drinks_no_garnish(drinks)

shelf.possible_drinks_no_brand(drinks)

shelf.possible_drinks_garnish(drinks)