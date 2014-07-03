class Sector < ActiveRecord::Base
	has_many :blocks
	has_many :boulders, through: :blocks
end
