class Weather 
  
  def stormy?
    generator == :stormy
  end
  
  def generator
   [:sunny, :sunny, :sunny, :stormy].sample
  end
end