class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update]
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit

  end

  def update
  if @student.update(student_params)
    p "student successfully updated"
    redirect_to @student
  else
    render 'edit'
  end
end

  def show
    @courses = Course.all
    @student = Student.find(params[:id])

  end

  def index
        @student = Student.new
    @students = Student.all.order(:last_name)
    @courses = Course.all
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :grade, :age, :education, :course_id, :cohort_id)
    end

    def find_student
     @student = Student.find(params[:id])
 end
end
