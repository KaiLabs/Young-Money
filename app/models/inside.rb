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
end
