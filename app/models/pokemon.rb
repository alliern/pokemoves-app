class Pokemon < ApplicationRecord
  has_many :poke_moves
  has_many :moves, through: :poke_moves

  # def move
  #   move = pokemon.poke_moves.moves
  #   move
  # end

end
