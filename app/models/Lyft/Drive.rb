class Drive
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    # Returns all the rides passenger has been on
    Ride.all.select{|ride| ride.driver == self}
  end

  def passengers
    rides.map{|ride| ride.passenger}
  end

  def self.mileage_cap(distance)
    rides.map do |ride|
      if ride.distance > distance
        ride.driver
      end
    end
  end

  def self.all
    @@all
  end
end
