class WebCourse < ApplicationRecord
  has_many :groups
  has_and_belongs_to_many :students


  validates :name, presence: true, uniqueness: true
  validates :days_duration, presence: true
end
