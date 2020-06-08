class Dessert
  attr_reader :name, :bakery
  @@all = []
  def initialize(bakery, name)
    @bakery = bakery
    @name = name
    @@all << self
  end

  def ingredients
    Ingredient.all.select{|ingredient| ingredient.dessert == self}
  end

  def calories
    # Return total number of calories
    ingredients.sum{|ingredient| ingredient.calorie_count}
  end

  def self.all
    @@all
  end
end
