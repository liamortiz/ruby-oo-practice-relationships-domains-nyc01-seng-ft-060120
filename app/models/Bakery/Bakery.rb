class Bakery
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    # Returns an array of ingredients belonging to this bakery
    Ingredient.all.select{|ingredient| ingredient.dessert.bakery == self}
  end

  def desserts
    # Returns an array of desserts belonging to this bakery
    Dessert.all.select{|dessert| dessert.bakery == self}
  end

  def average_calories
    calories = ingredients.sum{|ingredient| ingredient.calorie_count}
    (calories / ingredients.size)
  end

  def shopping_list
    # Should return an array of names
    ingredients.map{|ingredient| ingredient.name}
  end

  def self.all
    @@all
  end
end
