class RemovesMoveFromPokemonTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :pokemons, :move, :string
  end
end
