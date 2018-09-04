class Course < ApplicationRecord
    has_many :cohorts, dependent: :destroy
    has_many :students
end
