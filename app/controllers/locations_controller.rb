class LocationsController < ApplicationController
  def polygon
    @location = Location.find(params[:id])
    @boundaries = @location.boundaries
    respond_to do |format|               
      format.js
    end
  end
end