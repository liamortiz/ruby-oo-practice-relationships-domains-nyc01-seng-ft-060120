require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spain = Listing.new("Spain")
spain1 = Listing.new("Spain")
spain2 = Listing.new("Spain")
spain3 = Listing.new("Spain")
italy = Listing.new("Italy")
italy1 = Listing.new("Italy")
italy2 = Listing.new("Italy")
italy3 = Listing.new("Italy")
italy4= Listing.new("Italy")


johndoe = Guest.new("John")
johndoe2 = Guest.new("John1")
johndoe3 = Guest.new("John2")

new_trip = Trip.new(johndoe, spain)
new_trip2 = Trip.new(johndoe2, italy)
new_trip3 = Trip.new(johndoe3, italy)

Pry.start
