require_relative 'plane'
require_relative 'weather'

class Airport
 attr_reader :hangar, :capacity
 DEFAULT_CAPACITY = 10
 
 def initialize(capacity = DEFAULT_CAPACITY) 
  @hangar = []
  @capacity = capacity
  @weather = Weather.new
 end
 
 def land(plane)
   fail 'Airport is full' if full?
   fail 'Too stormy for landing' if @weather.stormy?
   
   hangar.push(plane)
   plane.grounded
 end

 def take_off(plane)
   fail 'Plane not in airport' unless @hangar.include?(plane)
   fail 'Too stormy for take-off' if @weather.stormy?
   
   hangar.delete(plane)
   plane.flying
 end
 
 def full?
  hangar.count >= capacity
 end

end 