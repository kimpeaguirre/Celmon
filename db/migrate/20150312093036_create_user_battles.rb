class CreateUserBattles < ActiveRecord::Migration
  def change
    create_table :user_battles do |t|
      t.integer :action

      t.timestamps
    end
  end
end
