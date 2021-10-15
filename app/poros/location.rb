class Location
  attr_reader :id,
              :location,
              :elevation,
              :humidity,
              :city,
              :state

  def initialize(location, elevation, humidity, coord)
    @id = nil
    @location = location
    @elevation = elevation
    @humidity = humidity
    @city = coord[:city]
    @state = coord[:state]
  end
end
