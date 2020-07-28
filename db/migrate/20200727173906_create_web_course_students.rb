class CreateWebCourseStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :web_course_students do |t|
      t.integer :student_id
      t.integer :web_course_id

      t.timestamps
    end
  end
end
