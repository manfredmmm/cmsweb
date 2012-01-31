class Department < ActiveRecord::Base
  #Associations
  has_many :teachers

  #Validations
  validates :name, :presence => true
end
