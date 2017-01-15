class Board < ApplicationRecord
	has_many :comments dependent: :destroy

	validates :title, presence: true, length: { in: 4..120 }
<<<<<<< HEAD
	validates :editor, presence: true, length: { in: 1..30 }
=======
>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6
	validates :supplement, presence: true, length: { in: 4..300 }
end
