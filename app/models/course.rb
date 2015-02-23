class Course < ActiveRecord::Base
  validates :title, presence: true
  validates :daytime, :inclusion => { :in => [true, false] }
end
