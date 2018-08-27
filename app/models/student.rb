class Student < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :email, presence: true, length: { maximum: 100 }
  validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
  def full_name
    self.first_name + " " + self.last_name
  end
end
