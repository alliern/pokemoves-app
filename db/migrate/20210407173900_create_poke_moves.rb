class CreatePokeMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :poke_moves do |t|
      t.integer :pokemon_id
      t.integer :move_id

      t.timestamps
    end
  end
end
