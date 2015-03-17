class RemoveTypeFromCreatures < ActiveRecord::Migration
  def change
  	remove_column :creatures, :type
  end
end
