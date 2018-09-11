class Student < ApplicationRecord
  belongs_to :cohort
  belongs_to :course
  before_save :default_values
  before_save { self.email = email.downcase }
  before_save { self.grade = grade.to_f }
  validates :email, presence: true, length: { maximum: 100 }
  validates_date :age, on_or_before: Time.now.year - 16
  validates_date :age, on_or_after: Time.now.year - 150
  def full_name
    self.first_name + " " + self.last_name
  end
  def default_values
    self.course_id ||= 0
    self.cohort_id ||= 0
  end

end
