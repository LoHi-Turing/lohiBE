class LocationFacade
  class << self
    def coordinates(location)
      latLng = {}
      result = LocationService.get_location(location)
      latLng[:lat] = result[:locations][0][:latLng][:lat]
      latLng[:lon] = result[:locations][0][:latLng][:lng]
      latLng[:city] = result[:locations][0][:adminArea5]
      latLng[:state] = result[:locations][0][:adminArea3]
      latLng
    end

    def return_elements(params_location)
      coord = coordinates(params_location)
      humidity = WeatherService.get_weather(coord[:lat], coord[:lon])[:current][:humidity]
      elevation = ElevationService.get_elevation(coord[:lat], coord[:lon])[:elevation]
      Location.new(params_location, elevation, humidity, coord)
    end
  end
end
