class Group < ApplicationRecord
  belongs_to :web_course
  has_many :group_students, dependent: :destroy
  has_many :students, :through => :group_students

  validates :name, presence: true, uniqueness: true
  validates :start_time, presence: true
  validates_presence_of :web_course_id
end
