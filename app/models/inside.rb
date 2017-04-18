class Inside < ApplicationRecord
  has_and_belongs_to_many :years

  def self.search(search)
    where("LOWER(name) LIKE ? OR
    LOWER(category) LIKE ? OR
    LOWER(department) LIKE ? OR
    LOWER(semester) LIKE ?",
    "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%"
    )
  end

  #define filter
  def self.filter(category = nil, semester = nil, department = nil)
    return where(category: category, department: department, semester: semester) if category && department && semester
    return where(category: category, department: department) if category && department
    return where(category: category, semester: semester) if category && semester
    return where(department: department, semester: semester) if department && semester
    return where(category: category) if category
    return where(department: department) if department
    return where(semester: semester) if semester
    all
  end

  #defining filter for semester
  def self.filter_semester(filter)
    where("semester LIKE ?",
    "%#{filter}%"
    )
  end

end
