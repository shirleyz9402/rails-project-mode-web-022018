class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    @creature = Creature.find(session[:creature_id])
  end

  def next
    @location = Location.find(params[:next][:next_id])
    @creature = Creature.find(session[:creature_id])

    @creature.visit(@location)
    if @creature.alive?
      redirect_to "/locations/#{@location.id}"
    else
      redirect_to "/death"
    end
  end
end
