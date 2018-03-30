
sewer = Location.create(name: "Sewer", swim: false, fly: false)
trump_tower = Location.create(name: "Trump Tower", swim: false, fly: false)
central_perk = Location.create(name: "Central Perk", swim: false, fly: false)
pond = Location.create(name: "Pond", swim: true, fly: false)
dumpster = Location.create(name: "NYC Dumpster", swim: false, fly: false)
chernobyl = Location.create(name: "Chernobyl", swim: false, fly: true)
tokyo = Location.create(name: "Tokyo", swim: true, fly: false)
serengeti = Location.create(name: "Serengeti", swim: false, fly: true)
moon = Location.create(name: "Moon", swim: false, fly: true)

edibles = Edible.create([
  {name: "cockamouse", value: 5, fly: false, swim: false, location: dumpster},
  {name: "glowing turd", value: 10, fly: false, swim: true, location: chernobyl},
  {name: "dancing turd", value: 10, fly: false, swim: false, location: dumpster},
  {name: "suspicious brown drank", value: 10, fly: false, swim: true, location: central_perk},
  {name: "toupee", value: 10 , fly: false, swim: false, location: trump_tower},
  {name: "smelly cat", value: 20, fly: false, swim: false, location: central_perk},
  {name: "Magikarp", value: 40 , fly: false, swim: false, location: pond},
  {name: "pedalboat", value: 100 , fly: false, swim: false, location: pond},
  {name: "Documentary film maker", value: 100 , fly: true, swim: false, location: serengeti},
  {name: "tanning bed", value: 100 , fly: true, swim: false, location: trump_tower},
  {name: "Totoro", value: 250 , fly: true, swim: false, location: tokyo},
  {name: "baby Godzilla", value: 500 , fly: false, swim: false, location: tokyo},
  {name: "Transformer", value: 600 , fly: false, swim: false, location: moon},
  {name: "nuclear reactor", value: 1000 , fly: false, swim: false, location: chernobyl},
  {name: "the stampede that killed Mufasa", value: 1500 , fly: true, swim: false, location: serengeti},
  {name: "moon", value: 4000 , fly: false, swim: false, location: moon}
  ])
decisions = Decision.create([
  {content: "Wait for your siblings to hatch", location: sewer, alive: false, cod: "Eaten by yo siblings brah"},
  {content: "Venture out on your own", location: sewer, goto: 5}
  ])
