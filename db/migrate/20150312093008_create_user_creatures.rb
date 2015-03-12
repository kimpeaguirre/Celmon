class CreateUserCreatures < ActiveRecord::Migration
  def change
    create_table :user_creatures do |t|
      t.integer :user_id
      t.string :nickname
      t.integer :hp

      t.timestamps
    end
  end
end
