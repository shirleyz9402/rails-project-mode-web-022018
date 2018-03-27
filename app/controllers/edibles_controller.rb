class EdiblesController < ApplicationController
  def update
    @creature = Creature.find(session[:creature_id])
    @edible = Edible.find(params[:edible_id])

    @creature.eat(@edible)
    @creature.save
    @edible.save

    if @creature.alive?
      redirect_to "/locations/#{@edible.location_id}"
    else
      # death
      redirect_to "/home"
    end
  end
end
