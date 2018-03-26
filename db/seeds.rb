
location1 = Location.create(name: "Sewer", swimming: false, fly: false)
location2 = Location.create(name: "Central Park", swimming: false, fly: false)
location3 = Location.create(name: "Pond", swimming: true, fly: false)
location4 = Location.create(name: "Dumpster", swimming: false, fly: false)
location5 = Location.create(name: "Moon", swimming: false, fly: true)
location6 = Location.create(name: "Chernobyl", swimming: true, fly: true)
location7 = Location.create(name: "Tokyo", swimming: true, fly: true)

edibles = Edible.create([
  {name: "cockamouse", value: 5 , fly: false, swim: false, deadly: false, location_id: nil},
  {name: "glowing turd", value: 10 , fly: false, swim: true, deadly: false, location_id: nil},
  {name: "cat", value: 20, fly: false, swim: false, deadly: false, location_id: nil},
  {name: "dead baby", value: 50 , fly: true, swim: false, deadly: false, location_id: nil},
  {name: "cheese", value: 20 , fly: false, swim: false, deadly: true, location_id: nil},
  {name: "car", value: 75 , fly: false, swim: false, deadly: false, location_id: nil},
  {name: "flower", value: 10, fly: false, swim: false, deadly: true, location_id: nil},
  {name: "cactus", value: 5 , fly: false, swim: false, deadly: false, location_id: nil}
  ])
