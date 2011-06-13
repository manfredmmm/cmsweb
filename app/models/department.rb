class Department < ActiveRecord::Base
  has_many :teachers
end
