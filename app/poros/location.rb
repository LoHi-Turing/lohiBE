class Location
  attr_reader :id,
              :location,
              :elevation,
              :humidity

  def initialize(location, elevation, humidity)
    @id = nil
    @location = location
    @elevation = elevation
    @humidity = humidity
  end
end
