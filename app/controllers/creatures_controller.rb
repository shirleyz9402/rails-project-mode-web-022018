class CreaturesController < ApplicationController
  before_action :reset, only: :create

  def create
    creature = Creature.create(name: params[:creature][:name], user_id: session[:user_id])
    session[:creature_id] = creature.id

    if creature
      redirect_to '/locations/1'
    else
      redirect_to "/home"
    end
  end

  private
  def reset
    Edible.all.each do |edible|
      edible.eaten = false
      edible.save
    end
  end
end
