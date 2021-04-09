# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# pokemon = Pokemon.create!(name: "Slowpoke", type_1: "water", type_2: "psychic", region: "Kanto")
# pokemon = Pokemon.create!(name: "Slowpoke", type_1: "psychic", region: "Galar")
# pokemon = Pokemon.create!(name: "Vulpix", type_1:  "Ice", region: "Alola")
# pokemon = Pokemon.create!(name: "Polywrath", type_1: "water", type_2: "fighting", region: "Kanto")

# move = Move.create!(name: "Bubble Beam", type_: "water", hm_tm: "TM", category: "special")
# move = Move.create!(name: "Pound", type_: "normal", hm_tm: "no", category: "physical")
# move = Move.create!(name: "Dig", type_: "ground", hm_tm: "TM", category: "physical")
# move = Move.create!(name: "Fly", type_: "flying", hm_tm: "HM", category: "physical")
# move = Move.create!(name: "Psywave", type_: "psychic", hm_tm: "TM", category: "special")

poke_move = PokeMove.create(pokemon_id: 1, move_id: 1, hm_tm: "no", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 4, move_id: 1, hm_tm: "TM", leveling: "yes")
