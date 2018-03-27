class CreaturesController < ApplicationController

  def create
    creature = Creature.create(name: params[:creature][:name])
    session[:creature] = creature
    if creature
      redirect_to '/locations/1'
    else
      redirect_to "/home"
    end
  end
end
