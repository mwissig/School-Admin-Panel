class StudentsController < ApplicationController
  before_action :find_student, only: %i[show edit update]
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else

      redirect_back(fallback_location: students_path)
      msg = @student.errors.full_messages
flash.now[:error] = msg
    end
  end

  def edit; end

  def update
    if @student.update(student_params)
      p 'student successfully updated'
      redirect_back(fallback_location: students_path)
    else
      render 'index'
      msg = @student.errors.full_messages
flash.now[:error] = msg
    end
end

  def show
    @cohorts = Cohort.all
    @courses = Course.all
    @student = Student.find(params[:id])
  end

  def index
    @student = Student.new
    @students = Student.all.order(:last_name)
    @courses = Course.all
  end

  def destroy
  @student = Student.find(params[:student_id])
  @student.destroy
  respond_to do |format|
    format.js
    format.html { p 'html_response'; redirect_to root_path }
  end
end


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :grade, :age, :education, :course_id, :cohort_id)
    end

  def find_student
    @student = Student.find(params[:id])
 end
end
