class CircleJoin < ApplicationRecord
	belongs_to :circle 
	belongs_to :user
	validates :user_id, uniqueness: { scope: :circle_id }
	validates :circle, presence: true
end
