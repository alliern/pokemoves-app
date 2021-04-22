class AddsMoveNameToPokeMoves < ActiveRecord::Migration[6.1]
  def change
    add_column :poke_moves, :move_name, :string
  end
end
