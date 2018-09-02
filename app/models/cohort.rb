class Cohort < ApplicationRecord
  belongs_to :course
  validates :start_date, presence: true
  validates :end_date, presence: true
end
