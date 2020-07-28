class WebCourse < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :web_course_students, dependent: :destroy
  has_many :students, :through => :web_course_students

  validates :name, presence: true, uniqueness: true
  validates :days_duration, presence: true
  validates :days_duration, inclusion: { in: 5..100 }
end
