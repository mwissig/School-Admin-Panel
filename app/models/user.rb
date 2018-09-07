class User < ApplicationRecord
  has_many :cohorts
  before_save :default_values
  before_save { self.email = email.downcase }
  def default_values
    self.admin_priv ||= 0
    self.salary ||= 36_000
  end
  before_save { self.email = email.downcase }
  has_secure_password
  validates :password, presence: true, length: { maximum: 32, minimum: 6 }
  validates :email, presence: true, length: { maximum: 100 }
  validates_date :age, on_or_before: Time.now.year - 16
  validates_date :age, on_or_after: Time.now.year - 150
  def full_name
    self.first_name + " " + self.last_name
  end

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCRYPT::Engine.min_cost
    BCrypt::Password.create(string, cost: cost)
  end

  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end
end
