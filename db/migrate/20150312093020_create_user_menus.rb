class CreateUserMenus < ActiveRecord::Migration
  def change
    create_table :user_menus do |t|
      t.integer :action

      t.timestamps
    end
  end
end
