class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    # can only go to location if you're authorized?
  end

end
