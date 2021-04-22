class AddsMoveToPokemonShow < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :move, :string
  end
end
