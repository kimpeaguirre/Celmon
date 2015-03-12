class CreateUserCreatureMoves < ActiveRecord::Migration
  def change
    create_table :user_creature_moves do |t|
      t.integer :user_creature_id
      t.integer :move_id
      t.integer :max_number
      t.integer :exp
      t.integer :dp

      t.timestamps
    end
  end
end
