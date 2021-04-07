class Move < ApplicationRecord
  has_many: poke_moves
  has_many: pokemon, through: poke_moves
end
