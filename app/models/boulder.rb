class Boulder < ActiveRecord::Base
	validates :name, presence: true, length: { in: 2..45 }
	belongs_to :block
	belongs_to :sector
	belongs_to :region
	belongs_to :grade
end