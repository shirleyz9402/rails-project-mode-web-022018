class Creature < ApplicationRecord
  belongs_to :user
  has_many :results

  def size_to_string
    self.size.to_s + " inches"
  end

  def creature_type_image
    # would a hash be better?
    case self.creature_type
    when "hungry hungry caterpillar"
      "evo1.svg"
    when "a slightly bigger caterpillar"
      "evo2.svg"
    when "middle-aged mutant ninja tortoise"
      "evo3.svg"
    when "MechaGodzilla"
      "evo4.svg"
    end
  end

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
      "Game OVER"
    else
      self.size += edible.value

      if edible.fly && !self.fly
        self.fly = true
        "Wow! What did you eat? You've sprouted wings!"
      elsif edible.swim && !self.swim
        self.swim = true
        "You seem to have grown some webbed feet. Congrats, you can swim!"
      else
        "You got bigger!"
      end
    end
  end

  def evolve
    if self.size >= 80 && self.creature_type == "hungry hungry caterpillar"
      self.creature_type = "a slightly bigger caterpillar"
      "You have evolved into a slightly bigger caterpillar!"
    elsif self.size >= 1000 && self.creature_type == "a slightly bigger caterpillar"
      self.creature_type = "middle-aged mutant ninja tortoise"
      "You have evolved into a middle-aged mutant ninja tortoise!"
    elsif self.size >= 4000 && self.creature_type == "middle-aged mutant ninja tortoise"
      self.creature_type = "MechaGodzilla"
      "You have evolved into a MechaGodzilla!"
    end
  end


  def decide(decision)
    if !decision.alive
      self.alive = false
      result = Result.create(
        user: self.user,
        creature: self,
        location: decision.location,
        cause_of_death: decision.cod)
      self.results << result
      self.save
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
