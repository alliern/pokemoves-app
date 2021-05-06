class Pokemon < ApplicationRecord
  has_many :poke_moves
  has_many :moves, through: :poke_moves
  has_many :user_pokemons
  has_many :users, through: :user_pokemons


end
