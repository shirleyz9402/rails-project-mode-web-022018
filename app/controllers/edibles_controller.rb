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
      @creature.size += (600 - (@creature.updated_at.to_time.to_i - @creature.created_at.to_time.to_i).to_f/60).round(2)
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
