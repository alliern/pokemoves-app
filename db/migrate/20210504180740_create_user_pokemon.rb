class CreateUserPokemon < ActiveRecord::Migration[6.1]
  def change
    create_table :user_pokemons do |t|
      t.integer :user_id
      t.integer :pokemon_id
      t.string :pokemon_name

      t.timestamps
    end
  end
end
