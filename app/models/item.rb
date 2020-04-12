class Item < ApplicationRecord
	belongs_to :user

	scope :is_user, -> (id) { where(user_id: id)}

	def completed?
		!completed_at.blank?
	end
end
