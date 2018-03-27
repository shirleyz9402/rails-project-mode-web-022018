class Creature < ApplicationRecord
  belongs_to :user
  has_many :results

  def eat(edible)
    edible.eaten = true
    if edible.value > self.size
      self.alive = false
      result = Result.create(
        user: self.user,
        creature: self,
        location: edible.location,
        cause_of_death: "You bit off more than you can chew. \nDeath by asphyxiation!!!!")
        byebug
        self.results << result
        self.save
    else
      self.size += edible.value
      self.fly = true if edible.fly
      self.swim = true if edible.swim
    end
  end

end
