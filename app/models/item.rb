class Item < ApplicationRecord
	belongs_to :user

	scope :is_user, -> (id) { where(user_id: id)}
end
