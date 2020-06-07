class Bakery
  @@all = []
  def initialize
    @@all << self
  end

  def deserts
    Desert.all.select{|desert| desert.bakery == self}
  end

  def self.all
    @@all
  end
end
