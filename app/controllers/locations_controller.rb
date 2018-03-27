class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    @creature = Creature.find(session[:creature_id])
  end

  def next
    redirect_to "/locations/#{params[:next][:next_id]}"
  end
end
