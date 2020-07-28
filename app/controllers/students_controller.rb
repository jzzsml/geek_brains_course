class StudentsController < ApplicationController
  def create
    @student = Student.new(student_params)
  end
    
  private
    
    def student_params
      params.require(:student).permit(:name, :email, :surname)
    end
end
