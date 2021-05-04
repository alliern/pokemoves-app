class RemoveSlugsFromPokemons < ActiveRecord::Migration[6.1]
  def change
    remove_column :pokemons, :slug, :string
  end
end
