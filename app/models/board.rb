class Board < ApplicationRecord
	has_many :comments dependent: :destroy

	validates :title, presence: true, length: { in: 4..120 }
	validates :supplement, presence: true, length: { in: 4..300 }
end
