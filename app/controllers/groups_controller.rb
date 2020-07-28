class GroupsController < ApplicationController
  layout false

  def enroll
    if request.post?
      @student = Student.new(student_params)
      if @student.valid?
        @student.save
        enrolled_group = Group.find_by(id: params['group_id'].to_i)
        enrolled_group.students << @student
        redirect_to "/web_courses/#{enrolled_group.web_course_id}"
      end
    else
      render(layout: nil)
    end
  end
  
  private
  
    def student_params
      params.require(:student).permit(:name, :email, :surname)
    end

    def permitted_params
        params.permit!
    end
end
