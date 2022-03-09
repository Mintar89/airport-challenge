require_relative 'plane'

class Airport
 attr_reader :hangar, :capacity
 DEFAULT_CAPACITY = 10
 
 def initialize
  @hangar = []
  @capacity = DEFAULT_CAPACITY
 end
 
 def land(plane)
   hangar.push(plane)
   plane.grounded
 end

 def take_off(plane)
   hangar.delete(plane)
   plane.flying
 end

end 