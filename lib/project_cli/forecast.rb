

class Weather::Forecast
  
  attr_accessor :date
  
  @@all = []
  
  def initialize(city)
    self.get_woeid(city)
    @@all << self
  end
  
  def self.all
    @@all
  end
end


