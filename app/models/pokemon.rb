class Pokemon < ApplicationRecord
  has_many :poke_moves
  has_many :moves, through: :poke_moves


  def empty_type
    if pokemon.type_2 != true
      pokemon.type_2 = "N/A"
    end
  end
end
