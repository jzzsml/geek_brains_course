require 'rails_helper'

RSpec.describe GroupsController do
    describe "POST #enroll" do
      it "create student and add a group" do
        web_course = WebCourse.create(name: 'Наазвание курса', description: 'Описание курса', days_duration: 10)
        group = Group.create(name: 'Наазвание группы', active: true, web_course_id: web_course.id, start_time: Time.now)
        posted_params = { group_id: group.id, 'student' => { name: "Имя", surname: "Фамилия", email: "surname@example.com" } }
        
        post :enroll, params: posted_params

        expect(group.students.last).to eq(Student.find_by(email: "surname@example.com"))
      end
    end
  end