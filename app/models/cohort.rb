class Cohort < ApplicationRecord
  has_many :students
  belongs_to :course
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
end
