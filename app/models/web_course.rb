class WebCourse < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_and_belongs_to_many :students

  validates :name, presence: true, uniqueness: true
  validates :days_duration, presence: true
  validates :days_duration, inclusion: { in: 5..100 }
end
