class EdiblesController < ApplicationController
  def update
    @creature = Creature.find(session[:creature_id])
    @edible = Edible.find(params[:edible_id])

    @user = User.find(session[:user_id])
    flash[:notice] = @creature.eat(@edible)
    flash[:alert] = @creature.evolve
    @creature.save
    @edible.save

    if @creature.alive?
      redirect_to "/locations/#{@edible.location_id}"
    else

      redirect_to "/death"
    end
  end
end
