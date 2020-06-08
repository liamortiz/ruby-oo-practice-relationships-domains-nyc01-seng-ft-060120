class Ride
  attr_reader :passenger, :driver, :distance
  @@all = []
  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance

    @@all << self
  end
  def self.average_distance
    # Returns the average distance of all rides
    distance = @@all.sum{|ride| ride.distance}
    (distance / @@all.size).to_f
  end
  def self.all
    @@all
  end
end
