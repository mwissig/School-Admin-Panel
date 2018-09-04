class Cohort < ApplicationRecord
  has_many :students
  before_save :default_values
  belongs_to :course
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  def default_values
    self.user_id ||= 0
  end
end
