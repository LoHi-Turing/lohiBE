class LocationService

  class << self

    def get_location(location)
      result = conn.get("/geocoding/v1/address") do |req|
        req.params['location'] = "#{location}"
      end
      parse_json(result)
    end

    def conn
      Faraday.new(url: "http://www.mapquestapi.com") do |req|
        req.params['key'] = ENV['map_key']
      end
    end

    def parse_json(result)
      formatted_result = JSON.parse(result.body, symbolize_names: true)[:results][0]
    end
  end
end
