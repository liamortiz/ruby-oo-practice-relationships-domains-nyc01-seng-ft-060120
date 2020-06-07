class Listing
  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    trips.map{|trip| trip.guest}
    # Returns an array of all the guests that stayed at this listing
  end

  def trips
    # Returns all trips for this listing
    Trip.all.select{|trip| trip.listing == self}
  end

  def trip_count
    # Returns the number of trips that have been taking to that listing
    trips.size
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    # Returns all listings for that city
    @@all.select{|listing| listing.city == city}
  end

  def self.most_popular
    @@all.max_by{|listing| listing.trip_count}
  end
end
