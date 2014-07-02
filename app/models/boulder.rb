class Boulder < ActiveRecord::Base
	validates :name, presence: true, length: { in: 2..45 }
	belongs_to :block
	has_one :grade
end