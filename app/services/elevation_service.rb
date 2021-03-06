class ElevationService
  class << self
    def get_elevation(lat, lng)
      result = conn.get("/api/v1/lookup?") do |req|
        req.params["locations"] = "#{lat},#{lng}"
      end
      parse_json(result)
    end

    def conn
      Faraday.new(url: "https://api.open-elevation.com", ssl: {verify: false})
    end

    def parse_json(result)
      JSON.parse(result.body, symbolize_names: true)[:results][0]
    end
  end
end
