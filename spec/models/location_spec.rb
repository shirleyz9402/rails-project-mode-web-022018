require 'rails_helper'

RSpec.describe Location, type: :model do

  it "has many edibles" do
    l = Location.new(name: "Home")
    e1 = Edible.new(name: "Cookie")
    e2 = Edible.new(name: "Milk")
    l.edibles << e1
    l.edibles << e2
    expect(l.edibles.size).to eq(2)
  end

  it "has many results" do
    l = Location.new(name: "Home")
    r = Result.new()
    l.results << r
    expect(l.results).to include(r)
  end

end
