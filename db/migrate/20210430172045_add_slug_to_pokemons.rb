class AddSlugToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :slug, :string
    add_index :pokemons, :slug, unique: true
  end
end
