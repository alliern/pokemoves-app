class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :pokemon_1
      t.string :pokemon_2
      t.string :pokemon_3
      t.string :pokemon_4
      t.string :pokemon_5
      t.string :pokemon_6

      t.timestamps
    end
  end
end
