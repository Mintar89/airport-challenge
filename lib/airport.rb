require_relative 'plane'

class Airport
 attr_reader :hangar, :capacity
 DEFAULT_CAPACITY = 10
 
 def initialize(capacity = DEFAULT_CAPACITY) 
  @hangar = []
  @capacity = capacity
 end
 
 def land(plane)
   fail 'Airport is full' if full?
   
   hangar.push(plane)
   plane.grounded
 end

 def take_off(plane)
   hangar.delete(plane)
   plane.flying
 end
 
 def full?
  hangar.count >= capacity
 end

end 