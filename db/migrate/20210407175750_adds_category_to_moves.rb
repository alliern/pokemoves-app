class AddsCategoryToMoves < ActiveRecord::Migration[6.1]
  def change
    add_column :moves, :category, :string
  end
end
