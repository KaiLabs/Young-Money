class Inside < ApplicationRecord
  has_and_belongs_to_many :years

  self.per_page = 10
  def self.search(search)
    where("LOWER(name) LIKE ? OR
    LOWER(category) LIKE ? OR
    LOWER(department) LIKE ? ",
    "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%"
    )
  end

  #define filter
  def self.filter(category = nil, department = nil, location = nil, finaid = nil)
    return where(category: category, department: department, location: location, finaid: finaid) if category && department && location && finaid
    return where(finaid: finaid, department: department, location: location) if finaid && department && location
    return where(category: category, finaid: finaid, location: location) if category && finaid && location
    return where(category: category, department: department, finaid: finaid) if category && department && finaid
    return where(category: category, department: department, location: location) if category && department && location
    return where(category: category, location: location) if category && location
    return where(department: department, location: location) if department && location
    return where(category: category, department: department) if category && department
    return where(finaid: finaid, category: category) if finaid && category
    return where(finaid: finaid, location: location) if finaid && location
    return where(finaid: finaid, department: department) if finaid && department
    return where(category: category) if category
    return where(department: department) if department
    return where(location: location) if location
    return where(finaid: finaid) if finaid
    all
  end

  has_many :favorite_insides # just the 'relationships'
  has_many :favorited_by, through: :favorite_insides, source: :user
end
