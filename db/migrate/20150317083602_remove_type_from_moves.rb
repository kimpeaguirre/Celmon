class RemoveTypeFromMoves < ActiveRecord::Migration
  def change
  	remove_column :moves, :type
  end
end
