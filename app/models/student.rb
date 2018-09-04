class Student < ApplicationRecord
  belongs_to :cohort
  belongs_to :course
  before_save :default_values
  before_save { self.email = email.downcase }
  before_save { self.age = age.to_i }
  before_save { self.grade = grade.to_f }
  validates :email, presence: true, length: { maximum: 100 }
  validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
  def full_name
    self.first_name + " " + self.last_name
  end
  def default_values
    self.course_id ||= 0
    self.cohort_id ||= 0
  end
end
