class Movie
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_actors
    # Returns object movie
  end

  def self.all
    @@all
  end
end
