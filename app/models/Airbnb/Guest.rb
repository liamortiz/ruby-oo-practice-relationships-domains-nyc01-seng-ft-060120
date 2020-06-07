class Guest
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def listings
    # Returns an array of all listings a guest stayed at
    trips.map{|trip| trip.listing}
  end

  def trips
    # Returns an array of all trips a guest made
    Trip.all.select{|trip| trip.guest == self}
  end

  def trip_count
    # Returns the number of trips this guest has taken
    trips.size
  end

  def self.pro_traveller
    # Returns an array of all guest who have made over 1 trip
    @@all.select{|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    # Returns all guest with that name
    @@all.select{|guest| guest.name == name}
  end

  def self.all
    @@all
  end
end
