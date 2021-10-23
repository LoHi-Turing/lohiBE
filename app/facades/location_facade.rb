class LocationFacade
  class << self
    def coordinates(location)
      lat_lng = {}
      result = LocationService.get_location(location)
      lat_lng[:lat] = result[:locations][0][:latLng][:lat]
      lat_lng[:lon] = result[:locations][0][:latLng][:lng]
      lat_lng[:city] = result[:locations][0][:adminArea5]
      lat_lng[:state] = result[:locations][0][:adminArea3]
      lat_lng
    end

    def return_elements(params_location)
      coord = coordinates(params_location)
      humidity = WeatherService.get_weather(coord[:lat], coord[:lon])[:current][:humidity]
      elevation = ElevationService.get_elevation(coord[:lat], coord[:lon])[:elevation]
      Location.new(params_location, elevation, humidity, coord)
    end
  end
end
