class Group < ApplicationRecord
  belongs_to :web_course
  has_and_belongs_to_many :students
  
  validates :name, presence: true, uniqueness: true
  validates :start_time, presence: true
  validates_presence_of :web_course_id
end
