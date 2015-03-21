class User < ActiveRecord::Base
	has_many :user_creatures

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
