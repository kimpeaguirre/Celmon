class CreateUserTrades < ActiveRecord::Migration
  def change
    create_table :user_trades do |t|
      t.integer :user_id
      t.string :requests

      t.timestamps
    end
  end
end
