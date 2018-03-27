class DecisionsController < ApplicationController
  def update
    @creature = Creature.find(session[:creature_id])
    @decision = Decision.find(params[:decision_id])

    @user = User.find(session[:user_id])
    @creature.decide(@decision)
    @creature.save

    if @creature.alive?
      redirect_to "/locations/#{@decision.goto}"
    else

      redirect_to "/death"
    end
  end
end
