class Creature < ApplicationRecord
  belongs_to :user

  def eat(edible)
    edible.eaten = true
    if edible.value > size
      alive = false
    else
    size += edible.value
      if edible.fly?
        creature.fly = true
      end
      if edible.swim?
        creature.swim = true
      end
    end
  end
end
