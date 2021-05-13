# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pokemon = Pokemon.create!(name: "Slowpoke", type_1: "water", type_2: "psychic", region: "Kanto")
pokemon = Pokemon.create!(name: "Slowpoke", type_1: "psychic", region: "Galar")
pokemon = Pokemon.create!(name: "Vulpix", type_1:  "Ice", region: "Alola")
pokemon = Pokemon.create!(name: "Polywrath", type_1: "water", type_2: "fighting", region: "Kanto")
pokemon = Pokemon.create!(name: "Dragonite", type_1: "dragon", type_2: "flying", region: "Kanto")
pokemon = Pokemon.create!(name: "Clefairy", type_1: "fairy", region: "Kanto", image: "https://static.wikia.nocookie.net/sonic-pokemon-unipedia/images/5/5e/Clefairy_AG_anime.png/revision/latest/scale-to-width-down/250?cb=20131108043029")
pokemon = Pokemon.create!(name: "Clefable", type_1: "fairy", region: "Kanto", image: "https://media.izi.travel/4e9d2b2c-83c3-4a84-8675-7cc276270305/e8490e92-9fa7-4a91-8222-b2374e821d1e_800x600.jpg")
pokemon = Pokemon.create!(name: "Ninetails", type_1: "ice", type_2: 
"fairy", region: "Alola", image: "https://img.pokemondb.net/artwork/ninetales-alolan.jpg")


move = Move.create!(name: "Bubble Beam", type_0: "water", hm_tm: "TM", category: "special")
move = Move.create!(name: "Pound", type_0: "normal", hm_tm: "no", category: "physical")
move = Move.create!(name: "Dig", type_0: "ground", hm_tm: "TM", category: "physical")
move = Move.create!(name: "Cut", type_0: "flying", hm_tm: "HM", category: "physical")
move = Move.create!(name: "Psyshock", type_0: "psychic", hm_tm: "TM", category: "special")
move = Move.create!(name: "Ice Beam", type_0: "ice", hm_tm: "TM", category: "special")
move = Move.create!(name: "Dazzling Gleam", type_0: "fairy", hm_tm: "TM", category: "special")
move = Move.create!(name: "Metronome", type_0: "normal", hm_tm: "TM", category: "status")


poke_move = PokeMove.create(pokemon_id: 1, move_id: 1, hm_tm: "no", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 4, move_id: 1, hm_tm: "TM", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 2, move_id: 5, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 1, move_id: 5, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 5, move_id: 4, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 3, move_id: 6, hm_tm: "TM", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 1, move_id: 4, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 2, move_id: 4, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 3, move_id: 3, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 4, move_id: 3, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 1, move_id: 3, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 2, move_id: 3, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 4, move_id: 2, hm_tm: "no", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 7, move_id: 8, hm_tm: "TM", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 6, move_id: 8, hm_tm: "TM", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 4, move_id: 8, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 6, move_id: 7, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 7, move_id: 7, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 8, move_id: 7, hm_tm: "TM", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 3, move_id: 7, hm_tm: "TM", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 6, move_id: 2, hm_tm: "no", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 6, move_id: 5, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 6, move_id: 6, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 6, move_id: 3, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 6, move_id: 3, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 7, move_id: 2, hm_tm: "no", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 8, move_id: 6, hm_tm: "TM", leveling: "yes")
poke_move = PokeMove.create(pokemon_id: 8, move_id: 3, hm_tm: "TM", leveling: "no")
poke_move = PokeMove.create(pokemon_id: 8, move_id: 5, hm_tm: "TM", leveling: "yes")

user_pokemon = UserPokemon.create(user_id: 1, pokemon_id: 4, pokemon_name: "Slowpoke")
user_pokemon = UserPokemon.create(user_id: 3, pokemon_id: 4, pokemon_name: "Slowpoke")
user_pokemon = UserPokemon.create(user_id: 3, pokemon_id: 1, pokemon_name: "Slowpoke")
user_pokemon = UserPokemon.create(user_id: 3, pokemon_id: 3, pokemon_name: "Vulpix")
user_pokemon = UserPokemon.create(user_id: 3, pokemon_id: 5, pokemon_name: "Dragonite")
user_pokemon = UserPokemon.create(user_id: 1, pokemon_id: 5, pokemon_name: "Dragonite")
user_pokemon = UserPokemon.create(user_id: 1, pokemon_id: 4, pokemon_name: "Polywrath")
user_pokemon = UserPokemon.create(user_id: 1, pokemon_id: 1, pokemon_name: "Slowpoke")
user_pokemon = UserPokemon.create(user_id: 1, pokemon_id: 3, pokemon_name: "Vulpix")
user_pokemon = UserPokemon.create(user_id: 5, pokemon_id: 2, pokemon_name: "Slowpoke")
user_pokemon = UserPokemon.create(user_id: 5, pokemon_id: 3, pokemon_name: "Vulpix")