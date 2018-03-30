require 'rails_helper'

RSpec.describe Result, type: :model do
  r = Result.new()

  it "belongs to a location" do
    l = Location.new()
    l.results << r
    expect(r.location).to eq(l)
  end

  it "belongs to a user" do
    u = User.new(name: "Sinclair")
    u.results << r
    expect(r.user).to eq(u)
  end

  it "belongs to a creature" do
    c = Creature.new(name: "Godzilla")
    c.results << r
    expect(r.creature).to eq(c)
  end

end
