class EdiblesController < ApplicationController
  def update
    creature = session[:creature]
    edible = Edible.find(params[:edible_id])
    creature.eat(edible)

    if creature.alive?
      redirect "/locations/#{edible.location_id}"
    else
      # death page
    end
  end 
end
