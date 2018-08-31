class ApplicationController < ActionController::Base
  before_action :get_all_new
def get_all_new
  @course = Course.new
  @newcohort = Cohort.new
  @user = User.new
  @student = Student.new
  @users = User.all.order(:last_name)
  @instructorsarray = [["No Instructor Selected", 0]]

  @users.each do |u|
    if u.admin_priv == 0
    p u.first_name
      arr = []
      arr << u.last_name + ", " + u.first_name
      arr << u.id
      @instructorsarray << arr
    end
  end
end
    include SessionsHelper
end
