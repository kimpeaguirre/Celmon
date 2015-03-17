class UserBattle < ActiveRecord::Base
	has_many :moves
	has_many :creatures
	has_many :user_creatures
	has_many :user_creature_moves
end
