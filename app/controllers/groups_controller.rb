class GroupsController < ApplicationController
  layout false

  def enroll
    request.post? ? make_enrollment : render(layout: nil)       
  end
  
  private

    def make_enrollment
      @student =
        Student.find_by(email: params[:student][:email]) || Student.create(student_params)
      if @student.valid?
        enrolled_group = Group.find_by(id: params['group_id'].to_i)
        enrolled_group.students << @student
        redirect_to "/web_courses/#{enrolled_group.web_course_id}"
      else
        render(layout: nil) 
      end
    end
  
    def student_params
      params.require(:student).permit(:name, :email, :surname)
    end
end