class CreateJoinTableWebCoursesStudents < ActiveRecord::Migration[5.2]
  def change
    create_join_table :web_courses, :students do |t|
      # t.index [:web_course_id, :student_id]
      # t.index [:student_id, :web_course_id]
    end
  end
end
