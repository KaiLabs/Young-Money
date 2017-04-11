class FavoriteInside < ApplicationRecord
	belongs_to :inside
	belongs_to :user
end
