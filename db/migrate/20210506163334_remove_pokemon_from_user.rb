class RemovePokemonFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :pokemon_1, :string
    remove_column :users, :pokemon_2, :string
    remove_column :users, :pokemon_3, :string
    remove_column :users, :pokemon_4, :string
    remove_column :users, :pokemon_5, :string
    remove_column :users, :pokemon_6, :string
  end
end
