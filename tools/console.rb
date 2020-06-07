require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mompops = Bakery.new("Mom & Pops")

cupcake = Dessert.new(mompops, "Cupcake")
cupcake = Dessert.new(mompops, "Cupcake")
cupcake = Dessert.new(mompops, "Cupcake")

chocolate = Ingredient.new("Chocolate", 120, cupcake)
salt = Ingredient.new("Salt", 20, cupcake)
sugar = Ingredient.new("Sugar", 30, cupcake)


Pry.start
