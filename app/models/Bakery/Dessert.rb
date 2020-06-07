class Dessert
  @@all = []
  def initialize(bakery)
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end
end
