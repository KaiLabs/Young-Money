class Inside < ApplicationRecord
  def self.search(search)
    where("LOWER(name) LIKE ? OR
    LOWER(category) LIKE ? OR
    LOWER(department) LIKE ? OR
    LOWER(season) LIKE ?",
    "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%"
    )
  end

  #define filter for category
  def self.filter_category(filter)
    where("category LIKE ?",
    "%#{filter}%"
    )
  end

  #defining filter for season
  def self.filter_season(filter)
    where("season LIKE ?",
    "%#{filter}%"
    )
  end

  has_many :favorite_insides # just the 'relationships'
  has_many :favorited_by, through: :favorite_insides, source: :user
end
