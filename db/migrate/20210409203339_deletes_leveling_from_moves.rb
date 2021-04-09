class DeletesLevelingFromMoves < ActiveRecord::Migration[6.1]
  def change
    remove_column :moves, :leveling, :string
  end
end
