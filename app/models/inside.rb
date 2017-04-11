class Inside < ApplicationRecord
  def self.search(search)
    where("name LIKE ? OR
    category LIKE ? OR
    deadline LIKE ? OR
    department LIKE ? OR
    season LIKE ?",
    "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"
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
  
end
