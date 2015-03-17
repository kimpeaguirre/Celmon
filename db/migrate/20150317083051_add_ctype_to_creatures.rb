class AddCtypeToCreatures < ActiveRecord::Migration
  def change
  	add_column :creatures, :ctype, :string
  end
end
