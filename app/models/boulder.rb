class Boulder < ActiveRecord::Base
	validates :name, presence: true, length: { in: 2..45 }
	belongs_to :block
end