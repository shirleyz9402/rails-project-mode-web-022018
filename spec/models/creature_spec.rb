require 'rails_helper'

RSpec.describe Creature, type: :model do

  it "has a name" do
    c = Creature.new(name: "Poop")
    expect(c.name).to eq("Poop")
  end





end
