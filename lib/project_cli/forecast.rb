require_relative 'cli'
require_relative 'weatherApi'

class Forecast
  attr_accessor :date
  
  @@all = []
  
  def initialize(date)
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
end 

forecast = Forecast.new("New York")
forecast.date