class Student < ApplicationRecord
  has_and_belongs_to_many :web_courses
  has_and_belongs_to_many :groups

  validates :email, presence: true, uniqueness: true
end
