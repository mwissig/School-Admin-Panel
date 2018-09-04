class CohortsController < ApplicationController
  before_action :find_cohort, only: %i[show edit update]
  def new
    @cohorts = Cohort.all
    @cohort = Cohort.new
    @users = User.all.order(:last_name)
    @courses = []
    Course.all.each do |co|
      arr = []
      arr << co.name
      arr << co.id
      @courses << arr
    end

    @instructors = [['No Instructor Selected', 0]]

    @users.each do |u|
      next unless u.admin_priv == 0
      p u.first_name
      arr = []
      arr << u.last_name + ', ' + u.first_name
      arr << u.id
      @instructors << arr
    end
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to @cohort
    else
      msg = @cohort.errors.full_messages
flash.now[:error] = msg
      render 'new'
    end
  end

  def edit; end

  def update
    if @cohort.update(cohort_params)
      p 'cohort successfully updated'
      redirect_to @cohort
    else
      msg = @cohort.errors.full_messages
flash.now[:error] = msg
      render 'index'
    end
end

  def show
    @cohort = Cohort.find(params[:id])
    @students = Student.all.order(:last_name)
  end

  def your
    @yourcohorts = Cohort.where(user_id: current_user[:id])
    @students = Student.all.order(:last_name)
    @courses = []
    Course.all.each do |co|
      arr = []
      arr << co.name
      arr << co.id
      @courses << arr
    end
  end

  def index
    @students = Student.all.order(:last_name)
    @cohorts = Cohort.all.order(:course_id)
    @cohort = Cohort.new
    @users = User.all.order(:last_name)

    @courses = []
    Course.all.each do |co|
      arr = []
      arr << co.name
      arr << co.id
      @courses << arr
    end

    @instructors = [['No Instructor Selected', 0]]

    @users.each do |u|
      next unless u.admin_priv == 0
      p u.first_name
      arr = []
      arr << u.last_name + ', ' + u.first_name
      arr << u.id
      @instructors << arr
    end
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :user_id, :start_date, :end_date, :course_id)
    end

  def find_cohort
    @cohort = Cohort.find(params[:id])
 end
end
