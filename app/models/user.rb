
class User < ApplicationRecord
  before_save :default_values
  def default_values
    self.admin_priv ||= 0
    self.salary ||= 36000
  end
  before_save { self.email = email.downcase }
  has_many :cohorts
  has_secure_password
  validates :password, presence: true, length: { maximum: 32, minimum: 8 }
  validates :email, presence: true, length: { maximum: 100 }
  validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
  def full_name
    self.first_name + " " + self.last_name
  end

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCRYPT::Engine.min_cost
                                  BCrypt::Password.create(string, cost: cost)
  end

end
