class AddsColumnsToPokeMoves < ActiveRecord::Migration[6.1]
  def change
    add_column :poke_moves, :hm_tm, :string
    add_column :poke_moves, :leveling, :string
  end
end
