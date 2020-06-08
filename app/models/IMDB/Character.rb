class Character
  attr_reader :movie, :show, :name
  @@all = []
  def initialize(movie, show, actor, name)
    @movie = movie
    @show = show
    @actor = actor
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end
end
