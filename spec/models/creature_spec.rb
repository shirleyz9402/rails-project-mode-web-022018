require 'rails_helper'

RSpec.describe Creature, type: :model do

  it "has a name" do
    c = Creature.new(name: "Poop")
    expect(c.name).to eq("Poop")
  end

  it "begins life as a hungry hungry caterpillar" do
    c = Creature.new()
    expect(c.creature_type).to eq("hungry hungry caterpillar")
  end

  
end
