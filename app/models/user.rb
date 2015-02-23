class User < ActiveRecord::Base
  has_secure_password
  validates :about, :password, presence: true
  validates :user_name, presence: true, uniqueness: true
end
