class Api::PokemonController < ApplicationController
  has_many: poke_moves
  has_many: moves, through: poke_moves
end
