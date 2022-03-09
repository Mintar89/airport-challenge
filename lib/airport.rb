require_relative 'plane'

class Airport
 attr_reader :hangar
 
 def initialize 
  @hangar = []
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