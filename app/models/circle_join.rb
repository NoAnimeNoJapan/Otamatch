class CircleJoin < ApplicationRecord
	belongs_to :user
    belongs_to :circle

    validates :user, presence: true
	validates :user_id, uniqueness: { scope: :circle_id }
	validates :circle, presence: true
end
