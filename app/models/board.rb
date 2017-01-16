class Board < ApplicationRecord
	has_many :comments dependent: :destroy

	validates :title, presence: true, length: { in: 4..120 }

	validates :editor, presence: true, length: { in: 1..30 }

	validates :supplement, presence: true, length: { in: 4..300 }
end
