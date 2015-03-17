class AddMtypeToMoves < ActiveRecord::Migration
  def change
  	add_column :moves, :mtype, :string
  end
end
