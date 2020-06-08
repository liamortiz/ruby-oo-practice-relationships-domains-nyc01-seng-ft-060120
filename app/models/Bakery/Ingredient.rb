class Ingredient
  attr_reader :calorie_count, :dessert, :name
  @@all = []

  def initialize(name, calorie_count, dessert)
    @dessert = dessert
    @name = name
    @calorie_count = calorie_count
    @@all << self
  end

  def bakery
    # Returns the bakery object that contains this ingredient
    b_variable = @@all.map do |ingredient|
      bakery = ingredient.dessert.bakery
      if dessert.ingredients.include?(self)
        bakery
      end
    end
    b_variable
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(name)
    @@all.select{|ingredient| ingredient.name == name}
  end
end
