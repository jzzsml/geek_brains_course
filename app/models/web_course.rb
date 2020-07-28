class WebCourse < ApplicationRecord
  has_many :groups, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :days_duration, presence: true
  validates :days_duration, inclusion: { in: 5..100 }
end
