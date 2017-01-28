class Board < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :circle
	validates :title, presence: true, length: { in: 4..120 }
	validates :editor, presence: true, length: { in: 1..30 }
	
end
