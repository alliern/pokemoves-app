class UpdatesMoveTypeNameAgain < ActiveRecord::Migration[6.1]
  def change
    rename_column :moves, :type_, :type_0 
  end
end
