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
#  scope :category, -> (category) {where category: category}
#  scope :department, -> (department) {where department: department}
#  scope :season, -> (season) {where season: season}
#  scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
end
