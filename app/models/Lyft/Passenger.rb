class Passenger
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    # Returns all the rides passenger has been on
    Ride.all.select{|ride| ride.passenger == self}
  end

  def drivers
    rides.map{|ride| ride.driver}
  end

  def total_distance
    rides.sum{|ride| ride.distance}
  end

  def self.premium_members
    # Find all passengers with >100 miles
    @@all.select{|passenger| passenger.total_distance > 100}
  end

  def self.all
    @@all
  end
end
