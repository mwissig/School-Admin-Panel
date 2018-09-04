class ApplicationController < ActionController::Base
  before_action :get_all_new
  def get_all_new
    @schoolname = Faker::StarWars.specie
    @course = Course.new
    @newcohort = Cohort.new
    @user = User.new
    @student = Student.new
    @students = Student.all.order(:last_name)
    @courses = Course.all
    @users = User.all.order(:last_name)
    @instructorsarray = [['No Instructor Selected', 0]]

    @users.each do |u|
      next unless u.admin_priv == 0
      arr = []
      arr << u.last_name + ', ' + u.first_name
      arr << u.id
      @instructorsarray << arr
    end
  end
  include SessionsHelper

  def search; end

  def results
    @results = params[:q]

    search_words = params[:q].downcase.split(' ')
    students_by_last = Student.pluck(:last_name)
    students_by_first = Student.pluck(:first_name)
    students_by_email = Student.pluck(:email)

    students = []
    students << students_by_email
    students << students_by_first
    students << students_by_last

    students.flatten!

    matches = []
    @final_results = []
    search_words.each do |word|
      students.each do |t|
        matches << t if t.downcase.include?(word)
      end

      matches.each do |match|
        x = Student.where(last_name: match)
        x.each do |y|
          @final_results << y
        end
        z = Student.where(first_name: match)
        z.each do |y|
          @final_results << y
        end
        a = Student.where(email: match)
        a.each do |y|
          @final_results << y
        end
      end
    end
    @final_results.uniq!
      end
end
