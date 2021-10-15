class Api::V1::LocationController < ApplicationController
  def index
    location = LocationFacade.return_elements(params[:location])
    if location.city != ""
      render json: LocationSerializer.new(location)
    else
      render json: ErrorSerializer.bad_location, status: 404
    end
  end
end
