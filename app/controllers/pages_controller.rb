class PagesController < ApplicationController
  def home
    @course = Course.new
    @cohort = Cohort.new
    @user = User.new
    @student = Student.new
  end
end
