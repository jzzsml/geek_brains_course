class WebCoursesController < ApplicationController
  def index
    @web_courses = WebCourse.all
    @groups = Group.where(active: true)
  end
  
  def show
    @web_course = WebCourse.find_by(id: params[:id])
    @groups = Group.where(web_course_id: @web_course.id, active: true)
  end
end
