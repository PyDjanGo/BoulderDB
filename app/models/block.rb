class Block < ActiveRecord::Base
	has_many :boulders
	belongs_to :sector
end
