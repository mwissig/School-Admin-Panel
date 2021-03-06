class CoursesController < ApplicationController
  before_action :find_course, only: %i[show edit update]
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      msg = "You have created a new course."
flash.now[:success] = msg
      redirect_to courses_path
    else
      msg = @course.errors.full_messages
flash.now[:error] = msg
      render 'new'
    end
  end

  def edit; end

  def update
    if @course.update(course_params)
      msg = "You have updated a course."
flash.now[:success] = msg
      redirect_back(fallback_location: courses_path)
    else
      msg = @course.errors.full_messages
flash.now[:error] = msg
      render 'index'
    end
end

  def show
    @course = Course.find(params[:id])
  end

  def index
    @courses = Course.all
  end

  def destroy
  @course = Course.find(params[:course_id])
  if @course.id != 1
    @course.destroy
    respond_to do |format|
      format.js
      format.html { p 'html_response'; redirect_to root_path }
    end
  else
    p "You can not delete this course"
  end
end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
    end

  def find_course
    @course = Course.find(params[:id])
 end
end
