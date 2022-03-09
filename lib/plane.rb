class Plane
  attr_reader :location
  
  def flying
    @location = :airborne
  end

  def grounded
    @location = :grounded
  end


end