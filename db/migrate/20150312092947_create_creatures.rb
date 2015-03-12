class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :hp

      t.timestamps
    end
  end
end
