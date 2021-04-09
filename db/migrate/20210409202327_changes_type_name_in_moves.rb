class ChangesTypeNameInMoves < ActiveRecord::Migration[6.1]
  def change
    rename_column :moves, :type, :type_ 
  end
end
