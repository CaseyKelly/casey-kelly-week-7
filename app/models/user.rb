class User < ActiveRecord::Base
  has_secure_password
  validates :about, presence: true
  validates :user_name, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 5, maximum: 120}, on: :create
end
