class LocationFacade
  class << self

    def coordinates(location)
      latLng = {}
      result = LocationService.get_location(location)
      latLng[:lat] = result[:locations][0][:latLng][:lat]
      latLng[:lon] = result[:locations][0][:latLng][:lng]
      latLng
    end

    def return_elements(params_location)
      coord = coordinates(params_location)
      humidity = WeatherService.get_weather(coord[:latLng][:lat], coord[:latLng][:lon])
      elevation = ElevationService.get_elevation(coord)
      Location.new(params_location, elevation, humidity)
    end
  end
end
