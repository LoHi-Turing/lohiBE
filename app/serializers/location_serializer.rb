class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :elevation, :humidity, :location
end
