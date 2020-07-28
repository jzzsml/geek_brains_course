class WebCourseStudent < ApplicationRecord
  belongs_to :web_course 
  belongs_to :student
end
  