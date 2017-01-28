class Event < ApplicationRecord
	belongs_to :user
	has_many :circles
	has_many :event_joins, dependent: :destroy

	def joined_by? user
     event_joins.where(user_id: user.id).exists?
	end

end
