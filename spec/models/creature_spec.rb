require 'rails_helper'

RSpec.describe Creature, type: :model do
  c = Creature.new(name: "Poop")

  it "has a name" do
    expect(c.name).to eq("Poop")
  end

  it "begins life as a hungry hungry caterpillar" do
    expect(c.creature_type).to eq("hungry hungry caterpillar")
  end

  it "dies when it eats something bigger than it" do
    e = Edible.new(value: 30)
    c.eat(e)
    expect(c.alive?).to be false
  end

  it "can learn to fly" do
    e = Edible.new(swim: true, value: 5)
    c.eat(e)
    expect(c.swim).to be true
  end

  it "can learn to swim" do
    e = Edible.new(fly: true, value: 5)
    c.eat(e)
    expect(c.fly).to be true
  end

end
