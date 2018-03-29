class EdiblesController < ApplicationController
  def update
    @creature = Creature.find(session[:creature_id])
    @edible = Edible.find(params[:edible_id])

    @user = User.find(session[:user_id])
    flash[:notice] = @creature.eat(@edible)
    flash[:alert] = @creature.evolve
    @creature.save
    @edible.save
    if @edible.name == "moon" && @creature.alive
      @result = Result.create(
        user: @user,
        creature: @creature,
        location: @edible.location,
        cause_of_death: "oo oo oo oo staying alive, staying alive"
        )
        @creature.results << @result
        @creature.save
      redirect_to "/victory"
    elsif @creature.alive
      redirect_to "/locations/#{@edible.location_id}"
    else
      redirect_to "/death"
    end
  end
end
