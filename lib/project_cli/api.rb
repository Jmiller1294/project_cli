
# beer API docs: https://www.metaweather.com/api/#location

require 'rubygems'
require 'httparty'
require 'pry'


class Weather::API
  ROOT_URL = 'https://www.metaweather.com/api/location/'

  def self.get_woeid(user_city)
    #sample url: https://www.metaweather.com/api/location/search/?query=chicago
    
    # get the site woeid ID to pull 5 day forecate for the city
    response = HTTParty.get(ROOT_URL + "search/?query=#{user_city}")
    # resp = HTTParty.get("https://www.metaweather.com/api/location/search/?query=#{user_city}")
    # binding.pry

    # response[0]['woeid'] #=> returns 2379574, from hash "woeid"=>2379574"
    self.get_forecast_for_city(response[0]['woeid'])
  end
 
 
  def self.create_from_array(response)
    self.response.each do |forecast|
      forecast = Forecast.new
      forecast.date = forecast[0]["applicable_date"]
     binding.pry
  end
       
  end
  

  def self.get_forecast_for_city(site_id)
    # sample url: https://www.metaweather.com/api/location/2379574/
    response = HTTParty.get(ROOT_URL + site_id.to_s)

    # resp = HTTParty.get("https://www.metaweather.com/api/location/#{site_id}")

    # next steps
    # build forecast class
    # make self.create_from_array (response)
  end

end




