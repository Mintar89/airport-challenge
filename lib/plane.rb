class Plane
  attr_reader :location
  
  def grounded
   fail 'Plane already in the airport' if @location == :grounded

   @location = :grounded
  end
  
  def flying

    
    @location = :airborne 
  end

end