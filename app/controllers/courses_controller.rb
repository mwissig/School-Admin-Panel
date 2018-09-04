class CoursesController < ApplicationController
  before_action :find_course, only: %i[show edit update]
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @course.update(course_params)
      p 'course successfully updated'
      redirect_back(fallback_location: courses_path)
    else
      render 'index'
    end
end

  def show
    @course = Course.find(params[:id])
  end

  def index
    @courses = Course.all
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
    end

  def find_course
    @course = Course.find(params[:id])
 end
end
