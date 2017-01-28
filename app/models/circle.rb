class Circle < ApplicationRecord
	belongs_to :user
	has_many :circle_joins, dependent: :destroy
	has_many :boards
	def joined_by? user
    circle_joins.where(user_id: user.id).exists?
	end
end
