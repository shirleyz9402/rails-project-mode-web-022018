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
      self.results << result
      self.save
    else
      self.size += edible.value

      # should tell them they have new abilities when they gain them
      self.fly = true if edible.fly
      self.swim = true if edible.swim
    end
  end

  def visit(location)
    if location.fly && !self.fly
      self.alive = false
      result = Result.create(
        user: self.user,
        creature: self,
        location: location,
        cause_of_death: "You tried to fly to #{location.name}, but you didn't know how, and fell to your death. Tragic.")
      self.results << result
      self.save
    elsif location.swim && !self.swim
      self.alive = false
      result = Result.create(
        user: self.user,
        creature: self,
        location: location,
        cause_of_death: "You have drowned.")
      self.results << result
      self.save
    end
  end

end
