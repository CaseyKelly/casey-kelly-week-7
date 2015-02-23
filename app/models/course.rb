class Course < ActiveRecord::Base
  validates :title, :daytime, presence: true
end
