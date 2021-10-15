class ErrorSerializer
  class << self
    def bad_location
      {
        errors: {
          status: "Not Valid",
          message: "Location is not valid",
          code: 404
        }
      }
    end
  end
end
