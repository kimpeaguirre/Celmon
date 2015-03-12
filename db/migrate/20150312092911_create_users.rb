class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :handle
      t.string :email
      t.integer :mobile

      t.timestamps
    end
  end
end
