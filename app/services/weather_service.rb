class WeatherService
  class << self
    def get_weather(lat, lon)

      result = conn.get("/data/2.5/onecall") do |req|
        req.params[:lat] = "#{lat}"
        req.params[:lon] = "#{lon}"
        req.params[:exclude] = "minutely,hourly,daily,alerts"
        req.params[:units] = "imperial"
      end
      parse_json(result)
    end

    def conn
      Faraday.new(url: "https://api.openweathermap.org") do |req|
        req.params[:appid] = ENV['weather_key']
      end
    end

    def parse_json(result)
      formatted_result = JSON.parse(result.body, symbolize_names: true)
    end
  end
end
