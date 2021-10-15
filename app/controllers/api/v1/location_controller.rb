class Api::V1::LocationController < ApplicationController
  def create
    location = LocationFacade.return_elements(params[:location])
    render json: LocationSerializer.new(location)
  end
end
