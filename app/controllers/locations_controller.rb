class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    @creature = Creature.find(session[:creature_id])

    @creature.visit(@location)
    if !@creature.alive?
      redirect_to "/death"
    end
  end

  def next
    @location = Location.find(params[:next][:next_id])
    # @creature = Creature.find(session[:creature_id])

    redirect_to "/locations/#{@location.id}"
  end
end
