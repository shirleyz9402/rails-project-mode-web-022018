class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    @creature = Creature.find(session[:creature_id])
  end
end
