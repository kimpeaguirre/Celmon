class Trade < ActiveRecord::Base
	has_many :user_trades
end
