class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.integer :user_creature_id

      t.timestamps
    end
  end
end
