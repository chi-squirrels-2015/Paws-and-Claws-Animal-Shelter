shelter_anti    = Shelter.create(name: "Anti Cruelty Society", location: Faker::Address.street_address)
shelter_paws    = Shelter.create(name: "Paws", location: Faker::Address.street_address)
shelter_claws   = Shelter.create(name: "Claws Animal Sanctuary", location: Faker::Address.street_address)
shelter_society = Shelter.create(name: "Downtown Humane Society", location: Faker::Address.street_address)

shelters = [shelter_anti,shelter_paws,shelter_claws,shelter_society]
      # t.string :name
      # t.string :species
      # t.boolean :adopted?
      # t.integer :img_id
      # t.belongs_to :shelter

9.times do |img_num|
  Animal.create(name: Faker::Name.name, species: 'cat', img_id: img_num, shelter: shelters.sample)
end

9.times do |img_num|
  Animal.create(name: Faker::Name.name, species: 'dog', img_id: img_num, shelter: shelters.sample)
end
